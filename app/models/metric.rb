class Metric < ActiveRecord::Base
	has_many :csf_category_metrics
	has_many :csf_categories, through: :csf_category_metrics
	has_many :metric_values
	has_many :metric_users
	has_many :users, :through => :metric_users
	accepts_nested_attributes_for :metric_values
	extend FriendlyId
  	friendly_id :name, use: :slugged
  	scope :active, -> { where(active: true)}
  	after_update :set_csf_maturity_level
  	after_create :create_seed_targets
  	after_create :create_seed_values

  	def create_seed_targets
  		metric = self.id
  		cur_date = DateTime.now.to_date
  		cur_period = Period.where('start_date < ?', cur_date).where('end_date > ?', cur_date).first.id

  		MetricTargetValue.create("metric_id" => metric, "period_id" => cur_period, "target_value" => 20, "target_maturity_level" => 0)
  		MetricTargetValue.create("metric_id" => metric, "period_id" => cur_period+1, "target_value" => 30, "target_maturity_level" => 1)
  		MetricTargetValue.create("metric_id" => metric, "period_id" => cur_period+2, "target_value" => 50, "target_maturity_level" => 2)
  		MetricTargetValue.create("metric_id" => metric, "period_id" => cur_period+3, "target_value" => 70, "target_maturity_level" => 3)
  		MetricTargetValue.create("metric_id" => metric, "period_id" => cur_period+4, "target_value" => 90, "target_maturity_level" => 4)
  	end

  	def create_seed_values
  		metric = self.id
  		cur_date = DateTime.now.to_date
  		cur_period = Period.where('start_date < ?', cur_date).where('end_date > ?', cur_date).first.id
  		period_1 = Period.find(cur_period - 1)
  		period_2 = Period.find(cur_period - 2)
  		period_3 = Period.find(cur_period - 3)		

		MetricValue.create("metric_id" => metric, "period_id" => period_1.id, "value" => "30", "maturity_level" => 1, "effective_date" => period_1.end_date)
		MetricValue.create("metric_id" => metric, "period_id" => period_2.id, "value" => "10", "maturity_level" => 0, "effective_date" => period_2.end_date)
		MetricValue.create("metric_id" => metric, "period_id" => period_3.id, "value" => "5", "maturity_level" => 0, "effective_date" => period_3.end_date)
	end

	def should_generate_new_friendly_id?
	  slug.blank? || name_changed?
	end

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |metric|
				csv << metric.attributes.values_at(*column_names)
			end
		end
	end

	def set_csf_maturity_level
		@avg = Metric.where(:csf_function_id => self.csf_function_id, :active => true).average(:recent_maturity_level)
		CsfFunction.find(self.csf_function_id).update_attributes("avg_maturity_level" => @avg)
	end	

	def csf_function_name
		CsfFunction.find(self.csf_function_id).name
	end

	def csf_function_slug
		CsfFunction.find(self.csf_function_id).slug
	end

	def first_entry
		if Metric.find(self.id).metric_values.first
			@old = MetricValue.where("metric_id" => self.id).order(:effective_date).first
			@old.effective_date
		else
		end
	end

	def recent_entry
		if Metric.find(self.id).metric_values.first

			@recent = MetricValue.where("metric_id" => self.id).order(:effective_date).reverse_order.first
			@recent.effective_date
		else
		end
	end

	def recent_value
		@recent = MetricValue.where("metric_id" => self.id).order(:effective_date).reverse_order.first
		@recent.value
	end

	def num_entries
		MetricValue.where("metric_id" => self.id).count(:id)
	end

	def hex_color

		if self.csf_function_id == 1
			"006fb3"
		elsif self.csf_function_id == 2
			"7f3f98"
		elsif self.csf_function_id == 3
			"ffdf16"
		elsif self.csf_function_id == 4
			"ed1c24"
		elsif self.csf_function_id == 5
			"0ba24b"
		end

	end

end
 
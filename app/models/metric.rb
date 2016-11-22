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
  	after_create :set_maturity_level_and_values

  	def set_maturity_level_and_values
  		metric = self.id

			MaturityLevel.create("metric_id" => metric, "weighted_value" => "0", "low" => "0", "high" => "0")
			MaturityLevel.create("metric_id" => metric, "weighted_value" => "1", "low" => "1", "high" => "10")
			MaturityLevel.create("metric_id" => metric, "weighted_value" => "2", "low" => "11", "high" => "40")
			MaturityLevel.create("metric_id" => metric, "weighted_value" => "3", "low" => "41", "high" => "90")
			MaturityLevel.create("metric_id" => metric, "weighted_value" => "4", "low" => "91", "high" => "100")

			MetricValue.create("metric_id" => metric, "value" => "10", "effective_date" => "2016-1-1")
			MetricValue.create("metric_id" => metric, "value" => "20", "effective_date" => "2016-2-1")
			MetricValue.create("metric_id" => metric, "value" => "30", "effective_date" => "2016-3-1")


		@value = MetricValue.all
		@value.each do |v|
			zero = MaturityLevel.where("metric_id" => v.metric_id).first	
			one = MaturityLevel.where("metric_id" => v.metric_id).second
			two = MaturityLevel.where("metric_id" => v.metric_id).third
			three = MaturityLevel.where("metric_id" => v.metric_id).fourth
			four = MaturityLevel.where("metric_id" => v.metric_id).fifth
			
			if v.value.between?(zero.low,zero.high)
				v.update("maturity_level" => zero.weighted_value)
			elsif v.value.between?(one.low,one.high)
				v.update("maturity_level" => one.weighted_value)
			elsif v.value.between?(two.low,two.high)
				v.update("maturity_level" => two.weighted_value)
			elsif v.value.between?(three.low,three.high)
				v.update("maturity_level" => three.weighted_value)
			elsif v.value.between?(four.low,four.high)
				v.update("maturity_level" => four.weighted_value)
			end
		end

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
 
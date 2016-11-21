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

		if self.active

			@avg = Metric.where("csf_function_id" => self.csf_function_id).average(:recent_maturity_level)
			CsfFunction.find(self.csf_function_id).update_attributes("avg_maturity_level" => @avg)

		else
		end
		
	end	

	def csf_function_name
		CsfFunction.find(self.csf_function_id).name
	end

	def csf_function_slug
		CsfFunction.find(self.csf_function_id).slug
	end

	def first_entry
		@old = MetricValue.where("metric_id" => self.id).order(:effective_date).first
		@old.effective_date
	end

	def recent_entry
		@recent = MetricValue.where("metric_id" => self.id).order(:effective_date).reverse_order.first
		@recent.effective_date
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
 
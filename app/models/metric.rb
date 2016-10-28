class Metric < ActiveRecord::Base

	has_many :metric_values
	accepts_nested_attributes_for :metric_values

	def csf_function_name
		CsfFunction.find(self.csf_function_id).name
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
 
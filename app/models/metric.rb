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

	def num_entries
		MetricValue.where("metric_id" => self.id).count(:id)
	end

end
 
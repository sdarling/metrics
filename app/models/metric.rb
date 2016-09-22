class Metric < ActiveRecord::Base

	has_many :metric_values
	accepts_nested_attributes_for :metric_values

	def organization_name
		Organization.find(self.organization_id).name
	end

	def csf_function_name
		CsfFunction.find(self.csf_function_id).name
	end

end

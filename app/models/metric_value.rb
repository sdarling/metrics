class MetricValue < ActiveRecord::Base

	belongs_to :metric

	def month_name
		Month.find(self.month_id).name
	end

	def maturity_value_name
		MaturityValue.find(self.maturity_value_id).name
	end
end

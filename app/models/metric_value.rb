class MetricValue < ActiveRecord::Base

	belongs_to :metric
	after_create :set_maturity_level
	after_create :set_recent_maturity_level
	after_create :set_csf_maturity_level
	validates :effective_date, :presence => true


	def month_name
		Month.find(self.month_id).name
	end

	def set_maturity_level

		zero = MaturityLevel.where("metric_id" => self.metric_id).first
		one = MaturityLevel.where("metric_id" => self.metric_id).second		
		two = MaturityLevel.where("metric_id" => self.metric_id).third
		three = MaturityLevel.where("metric_id" => self.metric_id).fourth		
		four = MaturityLevel.where("metric_id" => self.metric_id).fifth
		
		if self.value.between?(zero.low,zero.high)
			self.update("maturity_level" => zero.weighted_value)
		elsif self.value.between?(one.low,one.high)
			self.update("maturity_level" => one.weighted_value)
		elsif self.value.between?(two.low,two.high)
			self.update("maturity_level" => two.weighted_value)
		elsif self.value.between?(three.low,three.high)
			self.update("maturity_level" => three.weighted_value)
		elsif self.value.between?(four.low,four.high)
			self.update("maturity_level" => four.weighted_value)
		end
	end

	def set_recent_maturity_level

		@recent = MetricValue.where("metric_id" => self.metric_id).order(:effective_date).reverse_order.first

		Metric.find(self.metric_id).update_attributes("recent_maturity_level" => @recent.maturity_level)

	end

	def set_csf_maturity_level

		@metric_id = self.metric_id
		@csf = Metric.find(@metric_id).csf_function_id
		@avg = Metric.where("csf_function_id" => @csf, :active => true).average(:recent_maturity_level)

		CsfFunction.find(@csf).update_attributes("avg_maturity_level" => @avg)

	
	end

end

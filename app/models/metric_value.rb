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

		metric = Metric.find(self.metric_id)

		
		one = metric.ml_1	
		two = metric.ml_2
		three = metric.ml_3		
		four = metric.ml_4
		
		if self.value < one
			self.update("maturity_level" => 0)
		elsif self.value.between?(one,two)
			self.update("maturity_level" => 1)
		elsif self.value.between?(two,three)
			self.update("maturity_level" => 2)
		elsif self.value.between?(three,four)
			self.update("maturity_level" => 3)
		elsif self.value > four
			self.update("maturity_level" => 4)
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

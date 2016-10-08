class CsfFunction < ActiveRecord::Base
	has_many :metrics

	def num_metrics

		Metric.where("csf_function_id" => self.id).count(:id)

	end

end

class CsfCategory < ActiveRecord::Base
	has_many :csf_category_metrics	
	has_many :metrics, through: :csf_category_metrics

	def csf_function_name

		CsfFunction.find(self.csf_function_id).name

	end
end

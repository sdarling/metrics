class CsfCategory < ActiveRecord::Base
	has_many :csf_category_metrics	
	has_many :metrics, through: :csf_category_metrics
	extend FriendlyId
	friendly_id :name, use: :slugged	

	def should_generate_new_friendly_id?
	  slug.blank? || name_changed? 
	end  

	def csf_function_slug
		CsfFunction.find(self.csf_function_id).slug
	end

	def csf_function_name
		CsfFunction.find(self.csf_function_id).name
	end
end

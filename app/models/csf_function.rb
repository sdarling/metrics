class CsfFunction < ActiveRecord::Base
	has_many :metrics
	extend FriendlyId
	friendly_id :name, use: :slugged

	def should_generate_new_friendly_id?
	  slug.blank? || name_changed?
	end  	

	def num_metrics

		Metric.where("csf_function_id" => self.id).count(:id)

	end

end

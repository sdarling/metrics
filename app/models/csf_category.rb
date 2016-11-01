class CsfCategory < ActiveRecord::Base
	has_many :csf_category_metrics	
	has_many :metrics, through: :csf_category_metrics
end

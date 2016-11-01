class CsfCategoryMetric < ActiveRecord::Base
	belongs_to :csf_category
	belongs_to :metric
end

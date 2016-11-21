class MetricUser < ActiveRecord::Base
 	belongs_to :metric
 	belongs_to :user
end

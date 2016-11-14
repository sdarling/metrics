class SepBase < ActiveRecord::Base
	establish_connection "sep"
	self.abstract_class = true
end

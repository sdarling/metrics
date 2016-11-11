class SccmBase < ActiveRecord::Base
	establish_connection "sccm"
	self.abstract_class = true
end

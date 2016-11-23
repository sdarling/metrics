class Report < ActiveRecord::Base

	def source_name
		Source.find(self.source_id).name
	end

end

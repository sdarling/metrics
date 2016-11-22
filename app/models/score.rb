class Score < ActiveRecord::Base


	def self.cron_update_score
		score = CsfFunction.all.average(:avg_maturity_level)
		target = Score.last.target_value
		Score.create("effective_date" => DateTime.now, "actual_value" => score, "target_value" => target)
	end


end

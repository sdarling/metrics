class SccmMetricsController < InheritedResources::Base

	def index

		sql = "
		SELECT
		
		p.Title
		,p.Summary
		,COUNT(pj.Id) as ProjectCount

		from Program p

		LEFT OUTER JOIN Project pj on pj.Program_Id = p.Id

		WHERE p.Summary IS NOT NULL

		GROUP BY p.title, p.Summary
		"
		@sccm_metrics = SccmBase.connection.select_all(sql).to_a
		@all_sccm_metrics = SccmMetric.all

	end

  private

    def sccm_metric_params
      params.require(:sccm_metric).permit(:name, :description, :value)
    end
end


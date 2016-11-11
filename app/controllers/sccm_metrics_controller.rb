class SccmMetricsController < InheritedResources::Base


  private

    def sccm_metric_params
      params.require(:sccm_metric).permit(:name, :description, :value)
    end
end


class SepMetricsController < InheritedResources::Base

  private

    def sep_metric_params
      params.require(:sep_metric).permit()
    end
end


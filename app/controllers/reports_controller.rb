class ReportsController < InheritedResources::Base

  private

    def report_params
      params.require(:report).permit(:source_id, :name, :description)
    end
end


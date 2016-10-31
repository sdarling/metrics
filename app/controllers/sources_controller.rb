class SourcesController < InheritedResources::Base

  private

    def source_params
      params.require(:source).permit(:name, :description)
    end
end


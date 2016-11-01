class CsfCategoriesController < InheritedResources::Base

  private

    def csf_category_params
      params.require(:csf_category).permit(:csf_function_id, :name, :description, :abbreviation)
    end
end


class CsfCategoriesController < InheritedResources::Base

	def show

		@csf_category = CsfCategory.find(params[:id])
		@metrics = @csf_category.metrics

	end


  private

    def csf_category_params
      params.require(:csf_category).permit(:csf_function_id, :name, :description, :abbreviation)
    end
end


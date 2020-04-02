class Admin::CategoriesController < ApplicationController
  def index 
    @category = Category.new
    @categories = Category.all
  end
def create 
    @category = Category.new(category_params)
    @category.save!
    redirect_to admin_categories_path
  end
	def toggle_status
		@category = Category.find(params[:category_id])
		 @category.update(status: @category.toggle_status)
		redirect_to admin_categories_path
	end  
  private
    def category_params
      params.require(:category).permit(:name, :status)
    end  
end

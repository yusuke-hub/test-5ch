class Admin::CategoriesController < ApplicationController
  def index 
    @categories = Category.all
  end
  def new
    @category = Category.new
  end
  def create 
    @category = Category.new(category_params)
    @category.save!
    redirect_to admin_categories_path
  end
  private
    def category_params
      params.require(:category).permit(:name, :status)
    end  
end

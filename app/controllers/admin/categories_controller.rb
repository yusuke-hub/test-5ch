class Admin::CategoriesController < ApplicationController
  def new
    @category = Category.new
  end
  def create 
    @category = Category.new(category_params)
    @category.save!
    redirect_to new_board_path
  end
  private
    def category_params
      params.require(:category).permit(:name, :status)
    end  
end

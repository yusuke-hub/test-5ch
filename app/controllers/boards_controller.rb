class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @search = ContributionSearchForm.new(params[:search])    
  end
  def show
    @board = Board.find(params[:id])
    @post = Post.new
    @posts = Post.all
    @search = ContributionSearchForm.new(params[:search])    
  end
  def new
    @board = Board.new
    @category = Category.new
  end
  def create
    @board = Board.new(board_params)
    @board.save!
    redirect_to root_path
  end
  def search
    @search = ContributionSearchForm.new(params[:search])
    @q = @search.search
    if params[:search]
      @results = @q
    end
  end
  def result

  end
  private
    def board_params
      params.require(:board).permit(:user_id, :title, :caption, :image, :category_id)
    end
    def search_params
     params.permit(:title, :caption, :content)
    end    
end

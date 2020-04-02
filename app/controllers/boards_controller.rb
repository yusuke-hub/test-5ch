class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end
  def show
    @board = Board.find(params[:id])
    @post = Post.new
    @posts = Post.all
  end
  def new
    @board = Board.new
    @category = Category.new
  end
  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to root_path
  end
  private
    def board_params
      params.require(:board).permit(:user_id, :title, :caption, :image, :category_id)
    end
end

class Admin::BoardsController < ApplicationController
  def index
    @boards = Board.all
  end
  def show
    @board = Board.find(params[:id])
    @post = Post.new
    @posts = Post.all
  end
  def destroy 
    @board = Board.find(params[:id])
    if @boards.destroy
      redirect_to admin_boards_path
    end
  end
end

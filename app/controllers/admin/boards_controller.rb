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
    if @board.destroy
      redirect_to admin_boards_path, notice:'スレッドを削除しました'
    end
  end
end

class Admin::BoardsController < ApplicationController
  def index
    @boards = Board.all
  end
  def show
    @board = Board.find(params[:id])
    @post = Post.new
    @posts = Post.all
  end
end

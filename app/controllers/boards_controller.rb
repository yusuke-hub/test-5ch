class BoardsController < ApplicationController
  def index
    @board = Board.all
  end
  def new
    @board = Board.new
  end
  def create
    @board = Board.new(board_params)
    @board.save
  end
  def destroy
    @board = Board.find(params[:id])   
    @board.destroy
  end
  private
    def board_params
      params.require(:board).permit(:title, :caption, :image)
    end
end

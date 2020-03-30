class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    @post.save!
    redirect_to board_path(@post.board_id)
  end
  def show
    @post = Post.find(params[:id])
  end
  private
    def post_params
      params.require(:post).permit(:content, :user_id, :board_id)
    end
end

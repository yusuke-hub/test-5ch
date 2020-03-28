class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    @post.save!
  end
  def show
    @post = Post.find(params[:id])
  end
  private
    def post_params
      params.require(:post).permit(:content)
    end
end

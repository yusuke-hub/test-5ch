class Admin::PostsController < ApplicationController
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_board_path(@post.board_id), notice:'レスを削除しました'
  end  
end

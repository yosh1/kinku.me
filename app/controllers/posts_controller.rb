class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @user.post.create(post_params)
    redirect_to posts_index_path
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
    redirect_to "/",flash: {danger: "投稿を削除しました"}
  end
  end

  private
  def post_params
    params.require(:post).permit(:content, :image)
  end
end

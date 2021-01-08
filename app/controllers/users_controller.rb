class UsersController < ApplicationController

  def index
    @users = User.all 
    @posts = Post.all.order("created_at DESC")
  end

   def user
    @users = User.all 
    end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    log_in @user
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_update_params)
    redirect_to root_path
  end

  def destroy
    @user = User.find(params[:user_id])
    if @user.destroy
    redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:email,:password)
  end
  def user_update_params
    params.require(:user).permit(:email)
  end
end

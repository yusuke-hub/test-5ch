class Admin::UsersController < ApplicationController
  def index
    @users = User.all
     def confirm_admin(user)
      user.where(admin: true).exists?
     end
  end
  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_users_path, notice: "ユーザー「#{@user.name}さん」を登録しました"
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path, notice: "ユーザー「#{@user.name}さん」を削除しました"
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :admin, :password)
  end
end

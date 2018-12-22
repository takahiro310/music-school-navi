class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      log_in user
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render "users/new"
    end
  end
 
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

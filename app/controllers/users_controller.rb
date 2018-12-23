class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    check_user = User.find_by(email: params[:user][:email])
    unless check_user.nil? 
      logger.debug("check_user NOT NIL")
      flash.now[:danger] = '既に登録済みのメールアドレスです'
      render "users/new" and return
    end

    @user.save!
    log_in @user
    redirect_to new_school_path
  end
 
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

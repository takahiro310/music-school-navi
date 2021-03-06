class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to home_path
    else
      flash.now[:danger] = 'メールアドレスまたはパスワードが間違っています'
      render 'sessions/new'
    end
  end

end

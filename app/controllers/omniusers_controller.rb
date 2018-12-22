class OmniusersController < ApplicationController
  def create
    # request.env['omniauth.auth']はTwitter認証で得た情報を格納するもの
    user = User.find_or_create_from_auth_hash(request.env['omniauth.auth'])
    if user
      log_in user
      redirect_to home_path
    else
      redirect_to '/sessions/new', notice: "Twitter認証に失敗しました。"
    end
  end
end

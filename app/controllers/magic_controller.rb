class MagicController < ApplicationController
  def show
    if claim = Knock::AuthToken.new(token: params[:token])
      auto_login(User.find(claim.payload['sub']))
      redirect_to root_path
    else
      redirect_to root_path, notice: 'Token invalid'
    end
  end

  def login_params
    params.permit(:token)
  end
end

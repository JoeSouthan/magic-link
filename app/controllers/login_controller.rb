class LoginController < ApplicationController
  def index
  end

  def create
    if login(login_params[:email], login_params[:password])
      redirect_to root_path, notice: 'Logged in!'
    else
      render :index, notice: 'Fail'
    end
  end

  private

  def login_params
    params.require(:user).permit(
      :email, :password
    )
  end
end


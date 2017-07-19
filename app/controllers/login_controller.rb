class LoginController < ApplicationController
  def index
  end

  def create
    user = User.find_by(email: login_params[:email])
    if user
      LoginMailer.magic(user).deliver_later
      redirect_to root_path, notice: 'Check your email!'
    else
      render :index, notice: 'Fail'
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

  private

  def login_params
    params.require(:user).permit(
      :email, :password
    )
  end
end


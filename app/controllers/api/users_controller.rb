class Api::UsersController < ApplicationController

  def create
    user = User.create(user_params)
    render json: { user: user }
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end

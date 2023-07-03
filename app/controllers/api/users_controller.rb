class Api::UsersController < ApplicationController

  def index
    users = User.all
    render json: { user: users }
  end

  def create
    user = User.create(user_params)
    render json: { user: user }
  end

  def show
    return if params[:id].nil?
      
    user = User.find(params[:id]) 
    render json: { user: user }
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end

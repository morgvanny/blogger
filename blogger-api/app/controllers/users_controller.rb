class UsersController < ApplicationController

  def index
    render json: User.all, only: [:id, :name]
  end

  def show

    render json: User.find(params[:id]), include: :posts
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end

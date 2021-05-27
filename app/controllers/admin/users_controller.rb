class Admin::UsersController < ApplicationController
  def index
    # @users = User.all
    @users = User.includes(:answer)
  end

  def show
    @user = User.find(params[:id])
  end
end

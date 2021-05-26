class Admin::AnswersController < ApplicationController
  before_action :if_not_admin
  before_action :set_answers, only: [:index, :show, :edit, :destroy]
  
  
  private
  def if_not_admin
    redirect_to root_path current_user.admin?
  end
  
  def set_answers
    @answers = Answer.all
    @answer = Answer.find(params[:id])
  end
end

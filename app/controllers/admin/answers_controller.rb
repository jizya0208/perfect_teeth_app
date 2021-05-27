class Admin::AnswersController < ApplicationController
  before_action :if_not_admin
  before_action :set_answers, only: [:index, :show, :edit, :destroy]
  
  
  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end
  
  def set_answers
    # @answers = Answer.all   N+1を防ぐためincludesで記述
    @answers = Answer.includes(:user)
    @answer = Answer.where(user_id: params[:id])
  end
end

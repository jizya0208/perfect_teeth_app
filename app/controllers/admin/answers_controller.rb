class Admin::AnswersController < ApplicationController
  before_action :if_not_admin
  # before_action :set_answers, only: [:index, :edit, :destroy]
  def index
    # @answers = Answer.includes(:user).order(created_at: :desc)
    @answers = Answer.page(params[:page]).reverse_order
  end
  
  def show
    @answers = Answer.includes(:user).order(created_at: :desc)
    @answer = @answers.find_by(id: params[:id])
    latest_answer_id = params[:id].to_i
    @user = User.find_by("id = ?", @answer.user_id)
    @pre_answer = @user.answers.where("id < ?", latest_answer_id).last

    # 質問項目の要約文を配列へ格納
    @questions = ['目の疲れ', '口内炎', '下痢', '歯茎の出血', '気分', '胃もたれ', '尿頻度']
    #  answersテーブルのカラム名を配列へ格納
    @answer_keys = ['a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7']
  end
  
  def destroy
    answer = Answer.find_by(id: params[:id])
    answer.destroy
    redirect_to admin_user_path(answer.user_id)
    flash[:success] = "1件削除しました。"
  end
  
  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end
  
  # def set_answers
  #   @answers = Answer.includes(:user).order(created_at: :desc)
  # end
end

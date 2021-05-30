class Admin::AnswersController < ApplicationController
  before_action :if_not_admin
  # before_action :set_answers, only: [:index, :edit, :destroy]
  def index
    @answers = Answer.includes(:user).order(created_at: :desc)
  end
  
  def show
    @answers = Answer.includes(:user).order(created_at: :desc)
    @answer = @answers.find_by(id: params[:id])
    latest_answer_id = params[:id].to_i
    user = User.find_by("id = ?", @answer.user_id)
    @pre_answer = user.answers.where("id < ?", latest_answer_id).last

    # 質問項目の要約文を配列へ格納
    @questions = ['favorite BUMP', '口内炎', '下痢', '歯茎の出血', '気分', '胃もたれ', '尿頻度']
    #  answersテーブルのカラム名を配列へ格納
    @answer_keys = ['a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7']
  end
  
  
  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end
  
  # def set_answers
    # @answers = Answer.all ➡︎ N+1問題を防ぐためincludesに修正。params[:id]からレコードを取得する
  #   @answers = Answer.includes(:user).order(created_at: :desc)
    
  # end
end

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
    
    # @pre_answer = @answers.find_by(id: pre_id)
    # 質問項目の要約文を配列へ格納
    @questions = ['回答日時', 'favorite BUMP', 'love gakky?', 'favorite food']
    #  answersテーブルのカラム名を配列へ格納
    @answer_keys = ['created_at', 'a1', 'a2', 'a3']
    
  end
  
  
  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end
  
  def set_answers
    # @answers = Answer.all ➡︎ N+1問題を防ぐためincludesに修正。params[:id]からレコードを取得する
    @answers = Answer.includes(:user).order(created_at: :desc)

    # 取得したレコードのひとつ前のレコードを取得する = user_idで絞る　かつ　params[id]より小さい数で一番大きい
  end
end

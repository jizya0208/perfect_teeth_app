class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new
    @user = User.find_by(id: current_user.id)
  end
  
  def create
    @answer = current_user.answers.new(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to user_answer_path(@answer.user_id, @answer), notice: "回答が保存されました"
    # else
    # 　render "/answers/new"
    end
  end
  
  def show
    @answer = Answer.find(params[:id])
  end
  
  private
  def answer_params
    params.permit(:user_id, :sub_id, :a1, :a2, :a3)
    # , :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20
  end
end

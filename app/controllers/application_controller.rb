class ApplicationController < ActionController::Base
  # ログインしていないユーザーはログインページへ遷移。deviseを使用するときは許可されたparamsのみ受け取る。
  before_action :authenticate_user!,except: [:top]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # CSRF(クロスサイトリクエストフォージェリ)対策
  protect_from_forgery with: :exception
  
  
  # ログイン後遷移ページをオーバーライド。管理者なら回答一覧、一般ユーザーなら新規回答画面へ遷移。
  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_answers_path
    else
      new_user_answer_path(user_id: current_user.id)
    end
  end
  
  
  #　ログイン認証にid使用することを許可 
  protected
  def configure_permitted_parameters
    added_attrs = [:id, :last_name, :first_name]
    devise_parameter_sanitizer.permit(:sign_in, keys: [:id])
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
  end
end



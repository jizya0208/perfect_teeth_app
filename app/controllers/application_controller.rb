class ApplicationController < ActionController::Base
  # deviseを使用するときに呼び出す
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  # CSRF(クロスサイトリクエストフォージェリ)対策
  protect_from_forgery with: :exception
  
  
  # ログイン後遷移ページを新規回答画面としてオーバーライド。
  def after_sign_in_path_for(resource)
    new_answer_path
  end
  
  
  #　ログイン認証にid使用することを許可 
  protected
  def configure_permitted_parameters
    added_attrs = [:id, :last_name, :first_name]
    devise_parameter_sanitizer.permit(:sign_in, keys: [:id])
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
  end
end



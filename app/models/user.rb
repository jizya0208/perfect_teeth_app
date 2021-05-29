class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:id]
  
  has_many :answers
         
  def email_required?
    false
  end

  def email_changed?
    false
  end
  
  # エラー解除のため
  def will_save_change_to_email?
    false
  end
  
end

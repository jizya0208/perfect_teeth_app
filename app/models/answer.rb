class Answer < ApplicationRecord
  belongs_to :user
  
  # validates_uniqueness_of :sub_id, :scope => :user_id

  # before_create do
  #   this.sub_id = user.answers.size + 1
  # end
end

class Answer < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
    validates :a1
    validates :a2
    validates :a3
    validates :a4
    validates :a5
    validates :a6
    validates :a7
  end
  
  # validates_uniqueness_of :sub_id, :scope => :user_id

  # before_create do
  #   this.sub_id = user.answers.size + 1
  # end
end

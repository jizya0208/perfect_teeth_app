class AddSubIdToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :sub_id, :integer
  end
end

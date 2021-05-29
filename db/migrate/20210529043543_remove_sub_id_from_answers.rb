class RemoveSubIdFromAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :sub_id, :integer
  end
end

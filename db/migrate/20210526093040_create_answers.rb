class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :a5
      t.string :a6
      t.string :a7
      t.string :a8
      t.string :a9
      t.string :a10
      t.string :a11
      t.string :a12
      t.string :a13
      t.string :a14
      t.string :a15
      t.string :a16
      t.string :a17
      t.string :a18
      t.string :a19
      t.text :a20

      t.timestamps
    end
  end
end

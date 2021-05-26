class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :a1
      t.integer :a2
      t.integer :a3
      t.integer :a4
      t.integer :a5
      t.integer :a6
      t.integer :a7
      t.integer :a8
      t.integer :a9
      t.integer :a10
      t.integer :a11
      t.integer :a12
      t.integer :a13
      t.integer :a14
      t.integer :a15
      t.integer :a16
      t.integer :a17
      t.integer :a18
      t.integer :a19
      t.text :a20

      t.timestamps
    end
  end
end

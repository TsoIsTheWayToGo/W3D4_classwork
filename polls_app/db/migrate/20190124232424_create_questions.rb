class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.integer :poll_id, null: false
      t.timestamps
    end
    add_index :questions, :body
  end
end

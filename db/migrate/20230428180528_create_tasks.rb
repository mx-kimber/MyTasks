class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :deadline
      t.boolean :completed

      t.timestamps
    end
  end
end

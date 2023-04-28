class CreateCategoryTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :category_tasks do |t|
      t.integer :category_id
      t.integer :task_id

      t.timestamps
    end
  end
end

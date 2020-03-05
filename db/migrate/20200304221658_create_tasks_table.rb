class CreateTasksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t| 
      t.string :title 
      t.string :content
    end
  end
end

class CreateUserTasksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tasks do |t|
      t.references :user
      t.references :task
      t.references :project_board
    end
  end
end

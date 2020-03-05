class CreateProjectBoardsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :project_boards do |t| 
      t.string :name
    end
  end
end

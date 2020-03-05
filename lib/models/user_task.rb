class UserTask < ActiveRecord::Base 
    belongs_to :user 
    belongs_to :task
    belongs_to :project_board
end
class User < ActiveRecord::Base 
    has_many :user_tasks
    has_many :tasks, through: :user_tasks
    has_many :project_boards, through: :user_tasks
    validates :username, uniqueness: {case_sensitive: false}
end
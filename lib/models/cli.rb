class Cli
    attr_accessor :user, :project, :task
    
    
    def initialize user=nil, project=nil, task=nil
        @user = user
        @project = project
        @task = task
    end
    
    def prompt 
        TTY::Prompt.new
    end
    
    def main_menu
        puts "Welcome to Collaboratron!"
        set_user
        welcome_user
        show_project
        
    end
    
    
    def show_project
        response = prompt.select("Do you want to see your current projects ?", ["Yea! Show me my projects", "Nah I'm good"] )
        if (response == "Yea! Show me my projects" ) 
            response = prompt.select("Please choose a project...", user.project_boards.pluck(:name).uniq)
            self.project = ProjectBoard.find_by(name: response)
            show_tasks
        else
            show_project
        end
    end

    def show_tasks
        project_user_tasks = user.user_tasks.select do |user_task| 
            user_task.project_board_id == project.id
        end

        project_tasks = project_user_tasks.map(&:task)

        response = prompt.select("Choose a task to see more details...", project_tasks.pluck(:title))
        self.task = Task.find_by(title: response)
        show_task_content
    end

    def show_task_content
        puts "\n \n"
        puts task.content
        puts "\n \n" 
        puts "Here is a list of all your tasks..."
        show_tasks
    end

    def welcome_user 
        puts "Welcome #{user.username}"
    end
    
    def set_user 
        puts "Sign up / Sign In -- Enter username"
        username = gets.chomp
        self.user = User.find_or_create_by(username: username)
    end


end
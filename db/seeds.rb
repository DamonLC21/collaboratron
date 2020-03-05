nick = User.create(username: 'nick123')
mike = User.create(username: 'mike456')
katie = User.create(username: 'katie789')
jt = User.create(username: 'jt123')

task1 = Task.create(title: "Make user instances", content: "Create a migration for users and seed")
task2 = Task.create(title: "Create Models", content: "Create classes for each model")
task3 = Task.create(title: "Learn TTY Prompt", content: "Research Docs and ask older cohorts and if all else fails ask Damon.")
task4 = Task.create(title: "Create Project Board", content: "Create a migration for project_board table, migrate, seed")
task5 = Task.create(title: "Sign Up a User", content: "Build CLI Interface for User Signup")


p1 = ProjectBoard.create(name: "Live Coding")
p2 = ProjectBoard.create(name: "Trail Finder")

UserTask.create(user: nick, task: task1, project_board: p1)
UserTask.create(user: katie, task: task1, project_board: p1)
UserTask.create(user: mike, task: task1, project_board: p1)
UserTask.create(user: jt, task: task1, project_board: p1)
UserTask.create(user: nick, task: task3, project_board: p2)
UserTask.create(user: mike, task: task2, project_board: p2)
UserTask.create(user: katie, task: task5, project_board: p1)
UserTask.create(user: jt, task: task4, project_board: p1)



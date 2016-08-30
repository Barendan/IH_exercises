
require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')

task2 = Task.new("Do Laundry")
task3 = Task.new("Go to the gym") 
task1 = Task.new("Take out trash") 

todo_list = TodoList.new("Josh")
todo_list.add_task(task1)
todo_list.add_task(task2)
todo_list.add_task(task3)
# todo_list.load_tasks

get "/tasks" do
	@list = todo_list
	erb(:task_index)
end

get "/new_task" do
	erb(:new_task)
end

post "/create_task" do
	new_task = Task.new( params[:task_content] )

	todo_list.add_task( new_task )
	redirect to("/tasks")
end

get "/complete_task/:id" do
	the_task = todo_list.find_task_by_id( params[:id].to_i )
	the_task.complete!

	redirect to("/task_index")
end
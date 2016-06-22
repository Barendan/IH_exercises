require_relative("lib/todo.rb")

RSpec.describe Task do

before :each do @task = Task.new("content") end
before :each do @todo = TodoList.new end

	it "task should have a complete? method to show whether or not the task is done" do
		expect( @task.complete? ).to eq(false)
		end
	it "task's complete! method should return a value of true" do
		expect( @task.complete! ).to eq(true)
		end
	it "change a completed task via the make_incomplete! method so it's value is false again" do
		expect( @task.make_incomplete! ).to eq(false)
		end
	# it "should show the time that the task was created at" do
	# 	expect( @task.created_at ).to eq(Time.now)
	# 	end
	it "ensure that tasks are getting added to the array of tasks" do
		task = Task.new("laundry")
		task2 = Task.new("shopping")
		task3 = Task.new("trash")

		@todo.add_task(task)
		@todo.add_task(task2)
		@todo.add_task(task3)
		new_arr = [task, task2, task3]
		expect( new_arr ).to eq(@todo.tasks)
		end
	it "delete a specific task by using it's id" do
		expect( @task.delete_by_id(1) ).to eq(@todo.tasks)

	end
		
end





# task = Task.new("Buy the milk")
# # puts task.id
# # 1
# task.completed?
# task2 = Task.new("Wash the car")
# # puts task2.id
# # 2
# task.complete!



# task = Task.new("Buy the dog")
# # puts task.content 
# # Buy the dog
# task2 = Task.new("Walk the milk")
# # puts task2.content 
# # Walk the milk
# task.update_content!("Buy the milk")
# task2.update_content!("Walk the dog")
# puts task.content 
# # Buy the milk
# puts task2.content 
# # Walk the dog

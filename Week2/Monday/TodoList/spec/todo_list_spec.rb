require_relative("../lib/todo_list.rb")
require_relative("../lib/task.rb")

RSpec.describe TodoList do
  let(:task1) { Task.new("Take out trash") }
  let(:task2) { Task.new("Do Laundry") }
  let(:task3) { Task.new("Go to the gym") }
  let(:empty_list) { TodoList.new("Josh") }
  let(:list) do list = TodoList.new("Josh")


    list.add_task(task1)
    list.add_task(task2)
    list.add_task(task3)

    # Don't forget to return the value!
    list
end

	describe "#add_task" do
    it "adds tasks to the list" do
      expect( empty_list.tasks.length ).to eq(0)

      empty_list.add_task(task1)

      expect( empty_list.tasks.length ).to eq(1)
      expect( empty_list.tasks ).to include(task1)
    	end
	end

	 describe "#delete_task" do
    it "deletes task with given id" do

      list.delete_task(task2.id)

      expect( list.tasks ).not_to include(task2)
    	end
	end

	describe "#find_task_by_id" do
	it "finds a task with the given id" do
		expect( list.find_task_by_id(task1.id) ).to eq(task1)
		end
	it "returns nil for incorrect id" do
		expect( list.find_task_by_id(77676) ).to be_nil
		end
	end

	describe "#sort_by_created" do
	it "sorts the tasks by the created_at time" do
		list.sort_by_created

		expect( list.tasks ).to eq([task1,task2,task3])
		end
	end

	describe "#todo_list(user)" do
	it "add a user to the todo_list" do
		
		todo_list = TodoList.new("Josh")

		expect( todo_list.user ).to eq("Josh")
		end
	end
end


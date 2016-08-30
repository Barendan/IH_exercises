require_relative("../lib/task.rb")

RSpec.describe Task do

	describe "complete?" do
	it "shows false for new tasks" do
		task = Task.new("Wash Pants")

		expect( task.complete? ).to eq(false)
		end
	end
	describe "complete!" do
	it "task's should return true when complete!" do
		task = Task.new("Wash Pants")

		task.complete!

		expect( task.complete? ).to eq(true)
		end
	end
	describe "make_incomplete!" do
	it "changes complete! to false via make_incomplete" do
		task = Task.new("Wash Pants")
		task.complete!
		task.make_incomplete!

		expect( task.complete? ).to eq(false)
		end
	end
	# describe "Time.now" do
	# it "should show the time that the task was created at" do
	# 	expect( @task.created_at ).to eq(Time.now)
	# 	end
	# end
	describe "update_content!" do
    it "changes the text of a task" do
      task = Task.new("Wosh Ponts")

      task.update_content!("Wash Pants")

      expect( task.content ).to eq("Wash Pants")
    end
	end
end

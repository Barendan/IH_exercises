class TodoList
	 attr_reader :tasks
     attr_reader :user

    def initialize(user)
        @tasks = []
        @user = user
    end

    def add_task(new_task)
    	@tasks.push(new_task)
    end

    def delete_task(task_id)
        @tasks.delete_if do |task| task.id == task_id  end
    end

    def find_task_by_id(task_id)
        @tasks.find { |task| task.id == task_id  }
    end

    def sort_by_created
       sorted_time = @tasks.sort { | task1, task2 | task1.created_at <=> task2.created_at }

    end
end




    



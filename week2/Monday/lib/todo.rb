class TodoList
	 attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(task)
    	@tasks.push(task)
    end
end

class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        @created_at = Time.new
    end

    def complete?
    	@completed
    end

    def complete!
    	@completed = true
    end

    def make_incomplete!
    	@completed
    end

    def update_content!(string)
    	@content = (string)
    	@created_at = Time.new
    end

    def delete_by_id(id)
    	@tasks.delete_if { |task_id| task_id == id  }
    end

end

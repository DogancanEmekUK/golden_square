class TaskFormatter
    def initialize(task)
        @task = task
    end
  
    def format
      if (@task.complete? == true)
        return "[x] #{@task}"
      else
        return "[ ] #{@task}"
      end
    end
end
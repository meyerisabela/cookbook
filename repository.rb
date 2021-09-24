class Repository # banco de dados
  # STATE?
  def initialize
    @tasks = [] # Array de instancias de Task
  end

  # COMPORTAMENTOS / BEHAVIOR?

  # BEHAVIOR / COMPORTAMENTO
  # CRUD -> CREATE, READ, UPDATE, DESTROY

  # Create
  def add(task) # parametro task é a instancia de Task
    @tasks << task
  end

  # Read
  def all
    @tasks
  end

  # Update
  def find(user_index)
    # array[index]
    @tasks[user_index]
  end
end

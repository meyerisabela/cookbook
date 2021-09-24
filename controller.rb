require_relative 'task'

class Controller
  # o que o usuario pode fazer?
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  # adicionar task
  def add_task
    # 1 - (VIEW) perguntar o nome da tarefa do usuario
    title = @view.ask_for_title
    # 2 - (TASK) criar a task através da string (resposta do usuario)
    task = Task.new(title)
    # 3 - (REPOSITORY) adicionar a task ao repositorio
    @repository.add(task)
  end

  # ler as tasks
  def display_tasks
    # 1 - (REPOSITORY) pedir as tasks ao repositorio
    tasks = @repository.all
    # 2 - (VIEW) exibir as tasks pro usuario
    @view.print_tasks(tasks)
  end

  # atualizar como tarefa feita (completed)
  def mark_as_completed
    # # 1 - imitar os passos do display tasks
    # tasks = @repository.all
    # @view.print_tasks(tasks)
    # 2 - (VIEW) pegar o index da tarefa que quer marcar como completed
    user_index = @view.ask_for_index
    # 3 - (REPOSITORY) pedir ao repositorio a task do index solicitado
    task = @repository.find(user_index)
    # 4 - (TASK) marcar a tarefa como completed
    task.mark_as_completed
  end
end

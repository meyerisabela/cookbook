class Router
  # STATE
  def initialize(controller)
    @controller = controller
  end

  # BEHAVIOR / COMPORTAMENTO
  def run
    # ficar perguntando o que o usuario quer fazer
    loop do
      # listar as opcoes para usuario
      puts 'O que você quer fazer?'
      puts '1 - Para adicionar uma nova task'
      puts '2 - Para listar as tasks'
      puts '3 - Para marcar uma task com feita'
      puts '4 - Se quiser sair do programa'

      user_choice = gets.chomp.to_i

      # if user_choice == 1
      #   @controller.add_task
      # elsif user_choice == 2
      #   @controller.display_tasks
      # elsif user_choice == 3
      #   @controller.mark_as_completed
      # elsif user_choice == 4
      #   exit
      # else
      #   puts 'Opção inexistente!'
      # end
      # usar o case ao inves do if!!

      case user_choice
      when 1
        @controller.add_task
      when 2
        @controller.display_tasks
      when 3
        @controller.mark_as_completed
      when 4
        exit
      else
        puts 'Opção inexistente!'
      end
    end
  end
end

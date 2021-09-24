# require 'pry-byebug'

class View
  def ask_for_title
    puts 'Qual sua tarefa?'
    gets.chomp
  end

  def print_tasks(tasks)
    tasks.each_with_index do |task, index|
      status = task.completed ? '[X]' : '[ ]'
      puts "#{index + 1} - #{status} #{task.title}"
    end
    # 1 - [X] Dormir
    # 2 - [ ] Trabalhar
  end

  def ask_for_index
    puts 'Qual tarefa você quer marcar como feita?'
    gets.chomp.to_i - 1
  end
end

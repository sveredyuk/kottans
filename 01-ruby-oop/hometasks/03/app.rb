require_relative 'command'
require_relative 'todo'
require_relative 'todo_list'

class App
  def self.run
    new.run
  end

  def run
    clear_screen
    render_screen
    start_dialogue
  end

  private

  attr_reader :list

  def initialize
    @list = TodoList.new
  end

  def start_dialogue
    loop do
      command = Command.new(gets.chomp)

      break if command.exit?

      if command.display?
        show_list

      elsif command.add?
        print 'Add new todo: '
        list.add Todo.new(command.argument)
        render_screen

      elsif command.done?
        list.done!(command.argument)
        render_screen

      elsif command.remove?
        list.remove!(command.argument)
        render_screen

      elsif !command.valid?
        render_screen
      end
    end
  end

  def render_screen
    clear_screen
    show_list
    puts 'Use commands: display, add :task_name, done :task_no, remove :task_no or exit'
  end

  def clear_screen
    system('clear')
  end

  def show_list
    puts 'TODOs list:'
    list.display
  end
end

App.run

class TodoList
  EMPTY = '[empty]'.freeze

  attr_reader :todos

  def initialize
    @todos = []
  end

  def add(todo)
    @todos << todo
  end

  def display
    puts EMPTY if todos.empty?

    todos.each_with_index do |todo, index|
      puts "#{index + 1}: #{todo.title} #{todo.status}"
    end
  end

  def done!(index)
    return unless valid?(index)

    todos[index.to_i - 1].done!
  end

  def remove!(index)
    return unless valid?(index)

    todos.delete_at(index.to_i - 1)
  end

  private

  def valid?(index)
    (index.to_i > 0) && ((index.to_i - 1) < todos.count)
  end
end

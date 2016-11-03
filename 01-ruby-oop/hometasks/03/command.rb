class Command
  DISPLAY = 'display'.freeze
  ADD     = 'add'.freeze
  DONE    = 'done'.freeze
  REMOVE  = 'remove'.freeze
  EXIT    = 'exit'.freeze
  VALID_COMMANDS = [DISPLAY, ADD, DONE, REMOVE, EXIT].freeze

  attr_reader :command, :argument

  def initialize(input = nil)
    @command  = input.split.first.downcase
    @argument = input.split[1..-1].join(' ')
  end

  def display?
    command == DISPLAY
  end

  def add?
    command == ADD
  end

  def done?
    command == DONE
  end

  def remove?
    command == REMOVE
  end

  def exit?
    command == EXIT
  end

  def valid?
    VALID_COMMANDS.include?(command)
  end
end

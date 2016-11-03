class Todo
  DONE = '[DONE]'.freeze

  attr_reader :title

  def initialize(title)
    @title = title
    @done  = false
  end

  def done?
    @done
  end

  def done!
    @done = true
  end

  def status
    DONE if done?
  end
end

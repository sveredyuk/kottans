class Human
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def invite(human)
    Invite.new(human)
  end
end

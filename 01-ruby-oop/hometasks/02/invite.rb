class Invite
  attr_reader :human

  def initialize(human)
    @human = human
  end

  def to_drink(drink)
    puts "#{human.name} agree drink some #{drink.name} with you!"
  end
end

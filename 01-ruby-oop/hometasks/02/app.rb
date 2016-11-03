require_relative 'drink'
require_relative 'invite'
require_relative 'human'

volodya = Human.new('Volodya')
ira     = Human.new('Ira')
coffee  = Drink.new('Latte')

volodya.invite(ira).to_drink coffee
#=> Iran agrees to drink some Latte with you!

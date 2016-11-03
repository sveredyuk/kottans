OPERATIONS = %i(+ - * /).freeze

print 'A = '; a = gets.chomp.to_f
print 'B = '; b = gets.chomp.to_f
print "Select opertaion: #{OPERATIONS}: "

loop do
  operation = gets.chomp.to_sym

  if OPERATIONS.include?(operation)
    puts "Result: #{ a.send(operation, b) }"

    break
  end

  print "Invalid operaion. Please use only: #{OPERATIONS}: "
end

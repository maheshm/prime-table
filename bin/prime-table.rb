require_relative "../lib/prime-table.rb"

options = PrimeTable::Input.new.options

numbers = PrimeTable::Prime.new.first(options[:count])

output = PrimeTable::Output.multiplication(numbers)
puts output.puts

require_relative "../lib/prime-table.rb"

numbers = PrimeTable::Prime.new.first 10
output = PrimeTable::Output.multiplication(numbers)
puts output.puts

module PrimeTable
  class Output

    def self.multiplication(numbers)
      obj = self.new(numbers)
      obj.multiplication
      obj
    end

    def initialize(numbers)
      @numbers = numbers
    end

    def multiplication
      @table = []
      @numbers.each do |number|
        @table << @numbers.collect { |number2| number * number2 }
      end
    end

    def puts(driver = TerminalTable)
      driver.puts(@numbers, @table)
    end
  end

  class TerminalTable
    require 'terminal-table'

    def self.puts(headers, table_data)
      Terminal::Table.new do |table|
        table.headings = [nil] + headers
        headers.each_with_index do |header, index|
          table.add_row([header] + table_data[index])
        end
        table.style = {:alignment => :right}
      end
    end
  end
end

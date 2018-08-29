module PrimeTable

  require 'optparse'

  class Input
    def options
      @options ||= {}
      OptionParser.new do |opts|
        opts.on('-c', '--count N', Integer, 'number of primes') do |n|
          @options[:count] = n
        end
      end.parse!

      @options[:count] = 10 if @options[:count].nil?

      @options
    end
  end

end

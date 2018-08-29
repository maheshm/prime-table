module PrimeTable
  class Prime

    include Enumerable

    def each(generator = EratosthenesGenerator.new, &block)
      generator.each(&block)
    end

    class EratosthenesGenerator

      include Enumerable

      def initialize
        @last_prime_index = -1
      end

      def succ
        @last_prime_index += 1
        e_i ||= EratosthenesSieve.new
        e_i.get_nth_prime(@last_prime_index)
      end

      def rewind
        initialize
      end

      def each
        loop do
          yield succ
        end
      end

      alias next succ
    end

    class EratosthenesSieve
      # There cant be a better implementation of this than in Ruby lib itself.
      def initialize
        @primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101]
        # @max_checked must be an even number
        @max_checked = @primes.last + 1
      end

      def get_nth_prime(n)
        compute_primes while @primes.size <= n
        @primes[n]
      end

      private
      def compute_primes
        # max_segment_size must be an even number
        max_segment_size = 1e6.to_i
        max_cached_prime = @primes.last
        # do not double count primes if #compute_primes is interrupted
        # by Timeout.timeout
        @max_checked = max_cached_prime + 1 if max_cached_prime > @max_checked

        segment_min = @max_checked
        segment_max = [segment_min + max_segment_size, max_cached_prime * 2].min
        root = Math.sqrt(segment_max)

        segment = ((segment_min + 1) .. segment_max).step(2).to_a

        (1..Float::INFINITY).each do |sieving|
          prime = @primes[sieving]
          break if prime > root
          composite_index = (-(segment_min + 1 + prime) / 2) % prime
          while composite_index < segment.size do
            segment[composite_index] = nil
            composite_index += prime
          end
        end

        @primes.concat(segment.compact!)

        @max_checked = segment_max
      end
    end
  end
end

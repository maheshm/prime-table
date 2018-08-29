require_relative '../lib/prime-table/prime.rb'

describe PrimeTable::Prime do
  it 'generates any number of primes' do
    expect(PrimeTable::Prime.new.first(10)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    expect(PrimeTable::Prime.new.first(5)).to eq([2, 3, 5, 7, 11])
    expect(PrimeTable::Prime.new.first(20)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71])
  end

end

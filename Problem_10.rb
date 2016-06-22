#he sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.
require 'prime'

def summation_of_primes(num)
	sum = 0
	num.downto(2) do |number|
		if number.prime?
			sum += number
		end
	end
	return sum
end

puts summation_of_primes(2000000)

# def largest_prime(num)
# 	factors = []
# 	#Get a list of factors for the number
# 	factors << (2..num - 1).select {|number| num % number == 0}
# 	#find out which of those numbers are prime and return the largest one
# 	factors.each do |num|
# 		num.each do |number|
# 			index = num.length - 1
# 			while index >= 0
# 				return num[index] if is_prime?(num[index])
# 				index -= 1
# 			end
# 		end
# 	end
			
# end

# def is_prime?(num)
# 	index = num - 1
# 		while index > 1
# 			if num % index == 0
# 				return false
# 			end
# 			index -= 1
# 		end
# 	return true
# end

#My solution above worked unless the number was very large. It would take
#a very long time to run. Found the Prime Class in ruby documentation and 
#created a much more efficient solution.

require 'prime.rb'
def largest_prime(n)
	prime_factors = Prime.prime_division(600851475143)
	answer = prime_factors.sort.last
	return answer[0]
end

puts largest_prime(600851475143)


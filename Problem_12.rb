# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred divisors?
require 'prime'
def triangle_numbers
		index = 1
		num_of_divisors = 0
		#list the triange numbers up to num
		while num_of_divisors <= 500
		sum = 0
		1.upto(index) {|x| sum += x}
		puts "Triange number #{index} is #{sum}"
		#find how many divisors that triangle number has
		num_of_divisors = number_of_divisors(sum)
		puts "In triangle number #{index} there are #{num_of_divisors} divisors"
		index += 1
		end
	
end

# A math function to get the amount of divisors of a number is to get all the prime factors of a number,
# the you add one to all of the powers and get the product of those numbers
# ex: (180) = 2^2, 3^2, 5^1 --> 3*3*2 = 9*2 = 18       so 180 has 18 divisors
def number_of_divisors(num)
	prime_array = num.prime_division
	num_of_divisors = 1
	(0..prime_array.length - 1).each do |x|
		num_of_divisors *= (prime_array[x][1] + 1)
	end
	return num_of_divisors
end



triangle_numbers
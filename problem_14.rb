# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers 
# finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def Collatz_sequence
	index = 1 						#will increment towards 1 mil
	most_terms = 1					#keeps track of how many terms in the current iteration
	most_termed_value = 1 			#Takes the value of the highest termed number
	while index < 1000000			#This will do the formula for the current number
		num = index
		number_of_terms = 1
		while num != 1
			# puts num
			if num.even?
				num = num / 2
			else
				num = (num * 3) + 1
			end
			number_of_terms += 1
		end
	
	if number_of_terms > most_terms		#Checks to see if the last iteration was the highest
		most_terms = number_of_terms
		most_termed_value = index
	end
	index += 1
	end
	puts "The most termed value is #{most_termed_value} with #{most_terms} terms."
end

Collatz_sequence()

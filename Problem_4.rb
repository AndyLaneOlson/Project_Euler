#multiply all possible values
#check if they are palindromes
#hold an array of palindromes
#sort them by length
#pop off the largest one


def largest_palindrome
	palindromes = []
	(1..999).each do |outer_num|
		(1..999).each do |inner_num|
			number = outer_num * inner_num
			if number.to_s == number.to_s.reverse
				palindromes << number
			end
		end
	end	
	puts palindromes
	palindromes.sort!
	return palindromes[-1]


end

puts largest_palindrome
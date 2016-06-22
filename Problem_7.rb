def prime_10001(num)
	index = 2
	prime_count = 1
	
	while prime_count < num
		if is_prime?(index)
			prime_count += 1
		end
		index += 1
	end

return index - 1
end

def is_prime?(num)
	index = 2
		
		while index < Math.sqrt(num)+1
			if num % index == 0
				return false
			end
			index += 1
		end

	return true
end

puts prime_10001(10001) #=> 104743
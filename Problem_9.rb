def pythagorean_triplet(num)
	answer = 0
	(1..1000).each do |a|
		(1..1000).each do |b|
			c = (a**2) + (b**2)
			c = Math.sqrt(c)
			if a + b + c == num
				answer = a*b*c
				break
			end
		end
		if answer != 0
			break
		end
	end
	return answer
end

puts pythagorean_triplet(1000)
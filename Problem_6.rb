def sum_square(n)
	#get the sum of the squares
	sum_of_squares = (1..n).inject {|sum, num| sum += num**2}
	#get the sqaure of the sums
	square_of_sums = (1..n).inject {|sum, num| sum += num}
	return square_of_sums**2 - sum_of_squares
end

puts sum_square(100)
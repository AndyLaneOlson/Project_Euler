def multiples_of_3_5
	the_numbers = []
	(1..999).each do |num|
		if num % 5 == 0 || num % 3 == 0
			the_numbers << num
		end		
	end
	
	puts the_numbers.inject(0) {|sum, num| sum + num}
end

multiples_of_3_5()
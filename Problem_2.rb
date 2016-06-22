def fibonacci
	num1 = 1
	num2 = 2
	sum = 0
	max = 3999999
	the_nums = [2]
	while num2 < max
		new_num = num2 + num1
		num1 = num2
		num2 = new_num
		if new_num % 2 == 0
			the_nums << new_num
		end
	end
	answer = the_nums.inject(0) {|sum, num| sum + num}

	return answer
end

puts fibonacci
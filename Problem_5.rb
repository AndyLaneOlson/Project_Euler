def smallest_multiple
	index = 20
	flag = false
	inner_flag = true
	while flag == false
		puts index
		inner_flag = true
		(2..20).each do |num|
			
			if index % num != 0
				inner_flag = false
			end
			
		end
		if inner_flag == true
			flag = true 
		end
		index += 20 #since 20 must divide, we can increment by 20's to save time.
	end
	return index - 20	
end

puts smallest_multiple
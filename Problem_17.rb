# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 
# letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 
# 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance 
# with British usage.

def number_to_letters(number)
	#Ideas: First test the length of the number. Then go to the correct digits spot and removing that number, rinse and repeat
	string = ""
	while number > 0
		case #by ommiting a variable here I can compare on the when statements.

		when number < 10
			string << ones(number)
			number = 0

		when number < 100
			string << tens(number[0])
			number = 100 % number

		when number < 1000
			hundreds(number[0])
			number.delete_at(0)

		when number < 10000
			thousands(number[0])
			number.delete_at(0)

		end

	end
	return string
end

def ones(number)
	case number
	when 1
		return "one"
	when 2
		return "two"
	when 3
		return "three"
	when 4
		return "four"
	when 5
		return "five"
	when 6
		return "six"
	when 7
		return "seven"
	when 8
		return "eight"
	when 9
		return "nine"
	end
end

def tens(number)
	case number
	when 1
		return "ten"
	when 2
		return "twenty"
	when 3
		return "thirty"
	when 4
		return "fourty"
	when 5
		return "fifty"
	when 6
		return "sixty"
	when 7
		return "seventy"
	when 8
		return "eighty"
	when 9
		return "ninety"
	end
end

puts number_to_letters(20)
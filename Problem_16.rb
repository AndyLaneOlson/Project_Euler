# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?
answer = 2**1000
answer = answer.to_s.split("")
puts answer.inspect
puts answer.inject(0) {|sum, num| sum += num.to_i}



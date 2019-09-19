def collatz(num)
	length = 1
	while num != 1
		num = num.even? ? num / 2 : num * 3 + 1
		length += 1
	end
	return length
end

def longest(max)
	cursor = 1
	highest = 0
	longest = 0
	while cursor < max
		length = collatz(cursor)
		if length > highest
			highest = length
			longest = cursor
		end
		cursor += 1
	end
	return longest
end

puts "Enter a number:"
number = gets.chomp.to_i
puts "That number has a sequence length of #{collatz(number)}"
puts "The number <= 1,000,000 with the longest Collatz sequence is #{longest(1000000)}"
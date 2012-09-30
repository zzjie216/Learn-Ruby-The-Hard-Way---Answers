def theloop(i, j, k)
	numbers = []
	
	for x in (i...j)
		puts "At the top i is #{x}"
		numbers.push(x)
		x += k
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{x}"
	end
	
	return numbers
end

x = 0
y = 10
z = 2
for num in theloop(x, y, z)
	puts num
end
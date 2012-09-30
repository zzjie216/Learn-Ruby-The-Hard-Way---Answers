the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# A for loop which goes through an array
for number in the_count
	puts "This is the count #{number}"
end

# This goes through an array instead, but it uses a block

fruits.each do |fruity|
	puts "A fruit of type: #{fruity}"
end

# The system can go through mix arrays as well

for i in change
	puts "I got #{i}"
end

elements = (0..5).to_a

for i in elements
	puts "Element was #{i}"
end
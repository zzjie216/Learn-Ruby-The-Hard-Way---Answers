puts "I will now count my chickens:"
# Inserts some text into the terminal

puts "Hens", 25 + 30 / 6
# Inserts the text and then in a new line prints the result of the expression
# Expression is evaluated on the basis of BODMAS
# Brackets --> Exponents ---> Division / Multiplication / Modulo ---> Addition / 
# Subtraction

puts "Roosters", 100 - 25 * 3 % 4
# Again text is inserted and expression is evaluated

puts "Now I will count the eggs:"

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
# Follows the BODMAS precedence and executes in the order of left to right

puts "Is it true that 3 + 2 < 5 - 7?"

puts 3 + 2 < 5 - 7
# Evaluation automatically occurs for the less than operator and the result is returned
# as a boolean

puts "What is 3 + 2?", 3 + 2
puts "What is 5 - 7?", 5 - 7 
# Again printing some text and then appending the results. I wonder if there's a way to
# concatenate the text on one line.

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater?", 5 > -2
# Expressions returning true or false

puts "Is it greater or equal?", 5 >= -2
puts "Is it less or equal?", 5 <= -2 
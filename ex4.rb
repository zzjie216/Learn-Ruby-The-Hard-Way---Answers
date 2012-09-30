cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

# Extra Credit 1
# > ex4.rb:7: undefined local variable or method `cars_driven' for main:Object (NameError)
# This error means that when the interpreter came across the variable and tried to insert
# the data. To do that it goes back to check what has been assigned to that variable.
# When someone forgets to type it in this the error the interpreter raises when it can't 
# find anything. (where anything being an assignment for said variable)

# Extra Credit 2 & 3
# No using making space_in_a_car is not necessary, but it is advisable when dealing with 
# any operation that might produce a real number. According to good ole Google + wikipedia
# floats work by representing the significant digits i.e. only the parts of the number
# that provide actual information beyond its size and multiplying it by well its size.
# The way it works is by taking the numbers for some precision (i.e. the number of digits
# you are actually storing) representing them in binary and then storing the power of 2
# which needs to multiplied in to unpack the number according to (1 + sum(bit1*2^-1 + 
# bit2*2^-2 + ... + bitx*2^-x) * 2^whatever_power_needed_to_unpack)
# I suspect that whatever_power_needed_to_unpack is derived from the number of bits to
# the right or left that had to be discarded. I need to read the standard and find out
# how this works for sure.
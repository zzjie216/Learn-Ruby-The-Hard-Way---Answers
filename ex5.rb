name = 'Anna'
age = 20
height = 73 # inches
height_in_cm = height * 2.54
weight = 152
weight_in_kg = weight * 0.453592
weight_in_g = weight_in_kg * 1000
BMI = (weight_in_kg / ((height_in_cm)/100.0) ** 2)
eyes = 'Brown'
teeth = 'White'
hair = 'Jet Black'

puts "Let's talk about %s." % name
puts "She's %d inches tall." % height
puts "She's %d pounds heavy." % weight
puts "Actually that's not too heavy."
puts "She's got %s eyes and %s hair." % [eyes, hair]
puts "Her teeth are usually %s depending on her soda." % teeth

 puts "Let's try to figure out her BMI we take her height, which is %.2f m, and then weight, 
 	%.2f kg, and we apply Quetelet's formula to get %.2f." % [ (height_in_cm/100.0), weight_in_kg, 
 	BMI]
def prompt
	print "> "
end

puts "You enter a dark room with two doors. Do you go through door #1, #2 or door #3?"

prompt; door = gets.chomp

if door == "1"
	puts "There's a giant bear here eating a cheese cake. What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."
	
	prompt; bear = gets.chomp
	
	if bear == "1"
		puts "The bear eats your face off. Good job!"
	elsif bear == "2"
		puts "The bear eats your legs off. Good job!"
	else
		puts "Well, doing #{bear} is probably better. Bear runs away."
	end

elsif door == "2"
	puts "You stare into the endless abyss at Cthuhlu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothespins."
	puts "3. Understanding revolvers yelling melodies."
	
	prompt; insanity = gets.chomp
	
	if insanity == "1" or insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck. Good job!"
	end

elsif door == "3"
	puts "Welcome to the Monty Python game show!"
	puts "Say, what's your first guess? Door #1, Door #2 or Dooooor NUMBER THREE?!"
	
	print; monty_door = gets.chomp
	
	if monty_door == "1"
		
		puts " Tick, tock. Tick, tock. The answer behind door #2 is a monkey!"
		puts "Would you like to switch to door #3? Y/N"
		
		prompt; yn = gets.chomp
		
		yn.chars.to_a.shift()
		
		if yn == "Y" or yn == "y"
			puts " You win a CAR!"
		else
			puts "Too bad... You should have switched"
		end
		
	elsif monty_door == "2"
		
		puts "... and we have A.... Monkey?"
		
	elsif monty_door == "3"
		
		puts " Tick, tock. Tick, tock. The answer behind door #2 is a monkey!"
		puts "Would you like to switch to door #1? Y/N"
		
		prompt; yesno = gets.chomp
		
		yn = yesno.chars.to_a.shift()
		
		if yn == "Y" or yn == "y"
			puts "Heh, read the Monty Hall problem have you?"
			puts "Too bad, because this is the Montyh *Python* game show and...."
			puts "behind door number one is a pule of rotten savages!"
			
			puts "What do you want to do?"
			puts "1. Run"
			puts "2. Convert to savagism"
			puts "3. Hide"
			
			prompt; opts = gets.chomp
			
			options = opts.chars.to_a.shift()
			
			if options == "1" or options == "3"
				puts "Too bad... You are breakfast!"
			
			elsif options == "2"
				puts "Good choice! Now I'm breakfast... Taste delcious, don't I?"
			else
				puts "Smart move doing #{opts} has saved both our lives!"
			end
		end	
	else
			puts "The world dissolves into a puddle of pink lilacs (yes they exist)"
	end

else
	puts "You stumble around and fall on a knife and die. Good job!"
end 
# I've split operations performed within individual rooms into the following
# chunks

# Takes input from the screen
def prompt()
	print "> "; value = gets.chomp()
	return value
end

def tonum(next_move)
	y = false
	
	for x in (0..9)
		if next_move.include? "#{x}"
			y = true
		end
	end
	
	if y
		return next_move.to_i()
	else
		dead("Man, learn to type a number")
	end
	
end

def dead(why)
	puts "#{why} Good job!"
	Process.exit(0)
end

def storyboard(refferal)

	if referral == "bear room"
		
		puts "There is a bear here."
		puts "The bear has a bunch of honey."
		puts "The fat bear is in front of another door."
		puts "How are you going to move the bear?"
		
	elsif referral == "cthulhu room"
		
		puts "Here you see the great evil Cthulhu."
		puts "He, it, whatever stares at you and you go insane."
		puts "Do you flee for your life or eat your head?"
		
	elsif referral == "gold room"
		
		puts "This room is full of gold. How much do you take?"
	
	elsif referral == "start"
		
		puts "You are in a dark room."
		puts "There is a door to your right and left."
		puts "Which one do you take?"
		
	end
end
###############################################################################
#
# Here lies the code for individual rooms
#
###############################################################################

# The gold room

def gold_room()
	
	storyboard("gold room")
		
	how_much = tonum(prompt)
	
	if how_much < 50
		puts "Nice, you're not greedy, you win!"
		Process.exit(0)
	else
		dead("You greedy bastard!")
	end
	
end

# The bear room

def bear_room()
	
	storyboard("bear room")
	
	bear_moved = false
	
	while true
		
		next_move = prompt
		
		if next_move == "take honey"
			dead("The bear looks at you then slaps your face off.")
		elsif next_move == "taunt bear" and not bear_moved
			puts "the bear has moved from the door. You can go through it now."
			bear_moved = true
		elsif next_move == "taunt bear" and bear_moved
			dead("The bear gets pissed off and chews your leg off.")
		elsif next_move == "open door" and bear_moved
			gold_room()
		else
			puts "I got no idea what that means."
		end # ends the if
		
	end #ends the while loop
end

def cthulhu_room()
		
	storyboard("cthulhu room")
	next_move = prompt
	
	if next_move.include? "flee"
		start()
	elsif next_move.include? "head"
		dead("Well that was tasty!")
	else
		cthulhu_room() # Functions can be called from within functions!
	end # cthulhu room function if statement end

end

def start()
	
	storyboard("start")
	next_move = prompt
	
	if next_move == "left"
		bear_room()
	elsif next_move == "right"
		cthulhu_rooom()
	else
		dead("You stumble around the room until you starve.")
	end
	
end

start()
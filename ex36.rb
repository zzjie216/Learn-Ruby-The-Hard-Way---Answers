bu################################################################################
#                                                                              #
# Anna's game. I've tried to build a simple interactive game within ruby as my #
# first project. Hopefully the game will be somewhat interesting to play. I'm  #
# plugging in everything and giving it my best.                                #
#                                                                              #
################################################################################


# Prompts the user for input and returns an array of the numbers the user 
# has typed in. It includes a very primitive input parser.

# Checks if a number is in range and returns true if it is. Nil if it isn't

def checkifinrange(input, a, b)	
  x = Array (a..b)
  return x.map{ |y| input.include? "#{y}"}.delete_if{ |z| z == false}.shift  
end

# A function to extract a number from a string

def extractnum(input)
	extraction_string = input.split()	
	extraction_string.select{ |x| /\d+/ =~ x}.map{ |x| x.to_i} 
end

# The prompt itself

def prompt(x,y)
	flag = true
	
	while flag
		print "> "; input = gets.chomp()
		
		if checkifinrange(input, x, y) == true
			flag = false
		else
			puts "Let's try this again, please enter a number between #{x} and #{y}"
		end	
	end
	
	input = extractnum(input)
	return input
end

def charprompt()
	print "> "; input = gets.chomp()
end

# A function which throws an error

def error()
	puts "Heh, bud I've got no idea what you're talking about."
	puts "It looks like Anna did something wrong, so I'm quitting... Bye."
	Process.exit(0)
end

# A function which is called to end the game

def dead(parameter)
	puts "#{parameter}"
	puts "Dun dun DUN! Dead!"
	Process.exit(0)
end

# A function to check if a string exists within an answer

def checkifcorrect(input, stringarray)
	b = []
	for string in stringarray
		a = input.split.map{ |x| x.include? "#{string}"}.delete_if{ |y| y == false}
		a.compact!
		if a.shift == true
			b.push(a.shift)
			break
		end		
	end
	b.compact!
	x = b.shift
	return (x || false)
end

def sphinxinput()
	
	print "> "; input = gets.chomp()
	
	flag = false
	
	flagday = checkifcorrect(input.downcase, ["day"])
	flagnight = checkifcorrect(input.downcase, ["night"])
	
	if (flagday && flagnight)
		flag = true
	end
	return flag
end


def storyboard(room)
	
	if room == "intro"

		puts "Sweating at a dig Shifra, moves her hand over her brow and looks up."
		puts "The sun is at high noon and all is still at the site."
		puts "She carefully shifts her weight, ignoring the hunger spasms."
		puts "She gets back to work, but a strange feeling overcomes her."
		puts "Trying to concentrate, she tries to let it go, but it is persistent"
		puts "Overcome by the sensation she pauses to collect her thoughts,"
		puts "Before she knows it the ground opens up beneath her..." 
		puts "She falls down into the darkness...\n...\n"
		puts "You open your eyes groggily somewhere underground."
		
	elsif room == "main"

		
		puts "Torches, flickering in the background, tell you where you are,"
		puts "trapped in a large room somewhere deep underground..."
		puts "Five paths lead into the darkness, which one will you choose?"
		puts "1) A path from which the aromas of a city market waft past your nose?"
		puts "2) A path from which cold air rushes to fill the cavity?"
		puts "3) A dark path which seems to be devoid of light"
		puts "4) A path filled with light"
		puts "5) A path from which the sounds of animals float up"
	
	elsif room == "path1"
		
		puts "Stepping foot inside the first path, you feel wind rise, rush by you."
		puts "Your dress dancing, you gingerly make your way forward,"
		puts "until the wind becomes a gale, lifting you off of your feet."
		puts "You see spikes gleaming in the distance,"
		puts "and feel the smell of the city invade your body,"
		puts "overwhelming your senses."
		puts "Your senses exploding and hurtling through the passage way,"
		puts "a decision falls upon you; what should you do next?"
		puts "1) Look for something to grab?"
		puts "2) Assume a sky diving position and make an effort" 
		puts "to flatten yourself on the ground?"
		puts "3) Or try and dig the pick in your hand into the sandy ground?"
		
	elsif room == "sphinx"
		
		puts "A deep voice bellows in the dark \"Hullo there, Shifra\""
		puts "You look around you until your eyes fall upon a strange creature"
		puts "Having the head of a stunning woman and the body of a lion,"
		puts "it moves gracefully and almost hovers into the light with a"
		puts "flap of its wings."
		puts "\"You are a... sphinx\", you stutter staring at the creature"
		puts "\"Now, now don't be so rude\" the creature says pausing to flick"
		puts "its tail."
		puts "\"You have interrupted my rest, and I would like to be kind\""
		puts "\"I will ask you a riddle and if you correctly opine,"
		puts "you'll find yourself where you need to be....\""
		puts "\"If not... well let's just say I'll be having a nice bed time"
		puts "snack,\" continues the sphinx."
		puts "As you stare dumbfounded she says, \"Here's my riddle for your ears;" 
		puts "There are two sisters: one gives birth to the other and she, in turn,"
		puts "gives birth to the first. Who are the two sisters?\""
		
	elsif room == "path2"
		
		puts "As you trod towards the path, you notice that the ground gently "
		puts "slopes downwards. Going down the path, it becomes"
		puts "colder and colder. With the chill penetrating your bones, your teeth"
		puts "start to chatter. After a few minutes of this, you decide to go back."
		puts "As are turning around, you feel a tremor and you lose your balance."
		puts "Disoriented, you feel yourself travelling down on a steep, icy slope."
		
	else
		error()
	end
end

###############################################################################

# Path 1
# Starting the first room of the path or the main statement

def path1()
	storyboard("path1")
	input = prompt(1, 3)
	case input[0]
	when 1
		puts "Hurtling down you fail to find anything to grab and are intimately"
		puts "introduced with the spikes"
		dead("You lie there impaled, your life slowly slipping away... and you are")
	when 2
		puts "You manage to assume a sky diving position horizontal to the ground"
		puts "Carefully shifting your weight, you position yourself in a manner"
		puts "that makes the wind have a downwards force component."
		puts "Combined with gravity you finally touch the grown and are quickly"
		puts "flat against it."
		puts "As if sensing your attempt, the wind dies down."
		passageway()
	when 3
		puts "As you tumble towards your doom, you try and impale everything"
		puts "and anything with your pickaxe to find purchase, but you fail"
		puts "The spikes loom ahead, gleaming dangerously in the dark light"
		dead("You have an encouter with the spikes. The spikes win and you are...")
	else
		error()
	end
end

def passageway()
	puts "You stand in a dark passageway, strangely without any smell."
	puts "Getting your bearings you realise that you have two choices;"
	puts "1) Go back to the main chamber"
	puts "2) Explore some more"
	puts "What do you want to do?"
	
	input = prompt(1,2)
	
	case input[0]
	when 1
		puts "You tumble backwards in the darkness..."
		main()
	when 2
		puts "You find a passage way leading off into the darkness,"
		puts "with a torch flickering somewhere deep in the dark"
		sphinx()
	else
		error()
	end
end

def sphinx()
	storyboard("sphinx")
	if sphinxinput()
		puts "The sphinx smiles and gently touches your head with a paw."
		puts "Darkness creeps into your vision and you feel as if you're falling"
		puts "You tumble in the dark and finally land somewhere... You look around,"
		puts "taking your bearings."
		main()
	else
		dead("With a smile the sphinx opens her mouth wide and you are...")
	end
end

###############################################################################

# Path 2


def path2()
	storyboard("path2")
	puts "With the darkness looming ahead a voice booms in your ear,"
	puts "\"WHAT DO YOU NEED?\""
	input = charprompt()
	stringarraytocheck = ["sled", "sleigh", "sledge", "toboggan", "bobsled"]
	flag1 = checkifcorrect(input.downcase, stringarraytocheck)
	puts "check #{flag1}" 
	if flag1 == true
		input = input.split.delete_if{ |x| !(checkifcorrect(x, ["sled", "sleigh",
		"sledge", "toboggan", "bobsled"]))}
		choice = input.shift.to_s
		puts "You are lifted out of nowhere and placed on a #{choice}"
		puts "Using your #{choice} you manage to navigate the darkness,"
		puts "avoiding obstacles with your honed reflexes"
		path2_pathway()
	else
		puts "You hurtle down the slope straining to see where you're going."
		puts "You almost see it before it kills you, the big dark hole where"
		puts "you meet your doom. Once you fall in there's nothing you can do as"
		dead("the scorpions sting until you are...")
	end
end

def path2_pathway()
	puts "Time passes by in the tunnel as you avoid one obstacle after another."
	puts "Tired from the effort, you are about to give up when you see the"
	puts "tunnel branch into three in front of you, which branch do you want to"
	puts "choose? 1, 2, or 3?"
	input = prompt(1, 3)
	
	case input
	
	when 1
		roomwithbear()
	when 2
		apep()
	when 3
		puzzle()
	else
		error
	end
end

def roomwithbear()
end

def apep()
end

def puzzle()
end
###############################################################################

# Path 3


def path3()
	puts "Path 3"
end

###############################################################################

# Path 4


def path4()
	puts "Path 4"
end

###############################################################################

# Path 5


def path5()
	puts "Path 5"
end

###############################################################################

# The main chamber within which you wake up


def main()
	
	storyboard("main")
	
	input = prompt(1, 5)
	
	puts "You start walking towards path no. #{input[0]}"
	
	case input[0]
	when 1
		path1()
	when 2
		path2()
	when 3
		path3()
	when 4
		path4()
	when 5
		path5()
	else
		error()
	end
	
end

storyboard("intro")
main()
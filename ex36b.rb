#
# Attempt 3.0 to write the game
#

def story_and_choice_handler(storyline, choices)
	
	if File.file?(storyline.to_s)
		storyline = storyline.read
	elsif File.file?(choices.to_s)
		choices = choices.read
	end
	
	puts storyline
	puts choices
			
	number_of_choices = choices.split.select{ |i| i =~ /[0-9]/}.sort.pop.to_i
	
	while true
	
		print ">>> "; input = gets.chomp

		for input_element in input.split
			if input_element =~ /[0-9]/
				input_number = input_element.to_i
				break
			end
		end
		
		if input_number >= 1 && input_number <= number_of_choices
			return input_number
		else
			puts "Please type a number between 1 and #{number_of_choices}"
		end
	
	end
end

def file_loader()
	
	filenumber = "0"
	fileindex = 0
	
	while true
				
		story_file_path = "~/Dropbox/rpg2/" + "#{fileindex}" + ".txt"
		fileindex += 1
		choices_file_path = "~/Dropbox/rpg2/" + "#{fileindex}" + ".txt"
		
		story_file = File.open(File.expand_path(story_file_path))
		choices_file = File.open(File.expand_path(choices_file_path))
		
		storyline = story_file.read
		choices = choices_file.read
		if choices.to_i == 0
			puts "Game Over"
			Process.exit(0)
		end
		
		storyline = storyline.split("\n")
		storynum = storyline[0]
		storyline = storyline.drop(1)
		
		if storynum == filenumber
			input = story_and_choice_handler(storyline, choices)
			input = input.to_s
			input = input[0]
			filenumber = filenumber + input
		end
		
		fileindex +=1
	end
end

file_loader()
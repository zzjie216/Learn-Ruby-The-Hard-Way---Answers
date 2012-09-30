#
# Attempt 2.0 to write the game
#

def story_and_choice_handler(story_string_array, choice_array)

# Print the story and the choices available
	
	puts story_string_array.join(" ")
	puts choice_array.join(" ")
	
# Taking input and prompting the user to type something acceptable
	
	number_of_choices = choice_array.length
	
	while true
	
		print ">>> "; input = gets.chomp

# Extracting the number

		input_number = input.split.select{ |i| i =~ /[0-9]/}.shift.to_i

# Does the number make sense?
		
		if input_number >= 1 && input_number <= number_of_choices
			return input_number
		else
			puts "Please type a number between 1 and #{number_of_choices}"
		end
	end
end

def file_loader(filenumber)
	
	puts filenumber
	
	if filenumber.to_i == 0
	
		story_file = File.open(File.expand_path("~/Dropbox/rpg/0.txt"))
		choices_file = File.open(File.expand_path("~/Dropbox/rpg/0c.txt"))
		
		choices_array = []
		story_string_array = []
		story_file.each{ |line| story_string_array.push(line)}
		choices_file.each{ |choice| choices_array.push(choice)}
		
		next_file = (filenumber + 
		"#{story_and_choice_handler(story_string_array, choices_array)}")
		
		file_loader(next_file)
	
	else
	
		path_to_story_file = "~/Dropbox/rpg/" + filenumber + ".txt"
		path_to_choices_file = "~/Dropbox/rpg/" + filenumber + "c.txt"
		
		story_file = File.open(File.expand_path(path_to_story_file))
		choices_file = File.open(File.expand_path(path_to_choices_file))
		
		choices_array = []
		story_string_array = []
		story_file.each{ |line| story_string_array.push(line)}
		choices_file.each{ |choice| choices_array.push(choice)}
		
		file_loader(filenumber + "#{story_and_choice_handler(story_string_array, choices_array)}")		
		
	end
end

file_loader("0")
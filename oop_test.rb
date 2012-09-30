require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
	"class ### < ###\nend" => "Make a class named ### that is-a ###.",
	"class ###\n\tdef initialize(@@@)\n\tend\nend" => 
	"class ### has-a initialize that takes @@@ parameters.",
	"class ###\n\tdef ***(@@@)\n\tend\nend" => 
	"class ### has-a function named *** that takes @@@ parameters.",
	"*** = ###.new()" => "Set *** to an instance of class ###.",
	"***.***(@@@)" => 
	"From *** get the *** function, and call it with parameters @@@.",
	"***.*** = '***'" => "From *** get the *** attribute and set it to '***'."
}

# Assigns true if and only if the argument passed when the script is first
# called is English

PHRASE_FIRST = ARGV[0] == "english"

# Opens the URL and goes down it line by line.
# Each line is then pushed into the WORDS array

open(WORD_URL) { |f|
	f.each_line { |word| WORDS.push(word.chomp)}
}


# This piece of code scans for a pattern and for each occurrence
# it stores a word from the word list in an array which is returned
def craft_names(rand_words, snippet, pattern, caps = false)
	names = snippet.scan(pattern).map do
		word = rand_words.pop()
		caps ? word.capitalize : word
	end
	
	return names * 2	
end

# This piece of code scans for a pattern and for each occurrence
# it stores a word from the word list in an array which is returned
# The special sauce over here is that a join is done so that they are 
# returned in a manner which mimics the ruby parameters
def craft_params(rand_words, snippet, pattern)

# In the name variable for each number in the expression defined by
# the range 0...snippet.scan(pattern).length do the following operations
	names = (0...snippet.scan(pattern).length).map do

# The number of parameters is randomly chosen
		param_count = rand(3) + 1
		
# Once the number is chosen then an array of that length is created
# with random words
		params = (0...param_count).map {|x| rand_words.pop() }

# That array is joined together
		params.join(', ')
	end

# the variable is returned. It's into two because the substitution is 
# performed twice once for the code and the second time for the english!
	return names * 2
end

def convert(snippet, phrase)

# Randomises the words list by sorting it according to a random attribute
	rand_words = WORDS.sort_by {rand}
	
# Generating a list of class names
	class_names = craft_names(rand_words, snippet, /###/, caps = true)

# Generating a list of names for filling in other stuff.
	other_names = craft_names(rand_words, snippet, /\*\*\*/)
	
# Generating a list of names for parameters of the classes
	param_names = craft_params(rand_words, snippet, /@@@/)
	
	results = []
	
# Performing the substitution
	for sentence in [snippet, phrase]
		# fake class names, also copies sentence
		result = sentence.gsub(/###/){|x| class_names.pop }
		
		# fake other names
		result.gsub!(/\*\*\*/) {|x| other_names.pop }
		
		# fake parameter lists
		result.gsub!(/@@@/) {|x| param_names.pop}
		
		results.push(result)
	end

# Note results is an array consisting of two sentences
	return results
end

# Keep going until they hit CTRL-D
loop do
	snippets = PHRASES.keys().sort_by {rand}
	
	for snippet in snippets
		phrase = PHRASES[snippet]
		question, answer = convert(snippet, phrase)
		
		if PHRASE_FIRST
			question, answer = answer, question
		end
		
		print question, "\n\n> "
		
		exit(0) unless STDIN.gets
		
		puts "\nANSWER : %s\n\n" % answer
	end
end
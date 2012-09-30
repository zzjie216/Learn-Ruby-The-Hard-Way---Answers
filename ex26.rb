def break_words(stuff)
	# This function will break up words for us.
	words = stuff.split(' ')
	words
end

def sort_words(words)
	# Sorts the words.
	words.sort()
end

def puts_first_word(words)
	# Prints the first word after popping it off.
	word = words.split()
	puts word
end

def puts_last_word(words)
	# Prints the last word after popping it off.
	word = words.pop()
	puts word
end

def sort_sentence(sentence)
	# Takes in a full sentence and returns the sorted words.
	words = break_words(sentence)
	sorted_words = sort_words(words)
	sorted_words
end

def puts_first_and_last(sentence)
	# Puts the first and last words of the sentence.
	words = break_words(sentence)
	puts_first_word(words)
	puts_last_word(words)
end

def puts_first_and_last_sorted(sentence)
	# Sorts the words then prints the first and last one.
	words = sort_sentence(sentence)
	puts_first_word(words)
	puts_last_word(words)
end

def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<POEM
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.
POEM

puts "--------------"
puts poem
puts "--------------"

five = 10 - 2 + 3 - 6
puts "This should be five: %s" % five

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: %s" % start_point
puts "We'd have %s jeans, %s jars, and %s crates." % [beans, jars, crates]

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %d beans, %d jars, and %d crabapples." % secret_formula(start_point)

sentence = "All good things come to those who wait."

words = break_words(sentence)
sorted_words = sort_words(words)

puts_first_word(words)
puts_last_word(words)
puts_first_word(sorted_words)
puts_last_word( sorted_words)

sorted_words = sort_sentence(sentence)
print sorted_words

puts_first_and_last( sentence )

puts_first_and_last_sorted( sentence )
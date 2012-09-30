class Song
	
	def initialize(lyrics)
		@lyrics = lyrics
	end
	
	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end
	
	def number_of_words()
		@num_words = 0
		for line in @lyrics
			@num_words += line.split.length
		end
		puts "The number of words in the song is %d" % [@num_words]
	end
	
end

happy_bday = Song.new(["Happy birthday to you", "I don't want to get sued",
												"So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family", 
													"With pockets full of shells"])

think_twice = Song.new(["close your eyes and lose the",
 												"feeling that's been sinking",
												"close your eyes and count to three",
												"close your eyes rewind,", 
												"I know just what you're thinking",
												"close your eyes and think of me",
												"Larger than life niceties",
												"bigger than you, more than me",
												"I've got the monday morning blues",
												"and oh my god I've got the home for you",
												"and give the everyday morning you...use",
												"there's things right here I can't afford to choose"])
												
puts "-" * 10
happy_bday.sing_me_a_song()
happy_bday.number_of_words()
puts "-" * 10
bulls_on_parade.sing_me_a_song()
bulls_on_parade.number_of_words()
puts "-" * 10
think_twice.sing_me_a_song()
think_twice.number_of_words()
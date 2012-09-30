tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

# Extra Credit

puts <<STRING
Hi there let's go into a few details okay?
\t* List One
\t\t 1.) One
\t\t 2.) Two
\t\t 3.) Three\n\t\t\s4.)\sFour
\t\t\r \t*\sList Two
\t\t\t\sa.)\s \bAnna
\a
STRING
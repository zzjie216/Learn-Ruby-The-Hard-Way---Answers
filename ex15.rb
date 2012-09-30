# From the ARGV array it pulls out the first argument stored or passed via the terminal
# and stores it in filename

filename = ARGV.first

# defines a variable called prompt to denote the fact that input is being taken

prompt = "> "

# This line dumps the contents of the file into the object txt
txt = File.open(filename)


puts "Here's your file: #{filename}"
# this calls a function of the object txt and retrieves all of the info stored inside
puts txt.read()

puts "I'll also ask you to type it again:"
print prompt
# I'm taking input to get the file name from the user. We can't use gets directly as we
# have opened a file. Instead we must specify gets as an function of STDIN, the standard
# input "stream"
file_again = STDIN.gets.chomp()

print "Let's check if the file exists, so does it exist?"
STDOUT.puts "\n%s" % File.exist?(file_again)

# gives the file object a name and assigns it to txt_again
txt_again = File.open(file_again)

print "\n\nHere's the path of the file you just called"
STDOUT.puts "\n%s" % File.absolute_path(file_again)

print "\n\nBecause I'm being generous here's the time you last accessed it"
STDOUT.puts "\n%s" % File.atime(file_again)

# calls the read method again
puts txt_again.read()

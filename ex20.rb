input_file = ARGV[0]

# Defines the print function

def print_all(f)

# This calls the read function of the file object which then returns the entire file which
# is printed by the puts

	puts f.read()
end

# defines the rewind function which is receiving the current_file object

def rewind(f)

# IO::SEEK_SET means that it seeks to the absolute location described by the first number
# within the file. The other options are IO::SEEK_CUR which means it seeks to the amont 
# plus the current position and IO::SEEK_END which seeks to the amount plus the end of the
# stream like a cylinder rolling around.

	f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)

# This prints the text one line at a time. Each time the readline() function gets called
# it reads the next line until the \n character 

	puts "#{line_count} : #{f.readline()}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts

print_all(current_file)

puts "Now let's rewind, kind of like a tape"

rewind(current_file)

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
filename = ARGV.first
script = $0

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-D (^D)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines"

print "Line 1: "; line1 = STDIN.gets
print "Line 2: "; line2 = STDIN.gets
print "Line 3: "; line3 = STDIN.gets

puts "I'm going to write these to the file."

target.write(line1 + line2 + line3)

target.close()
first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

puts "Hrm lets see. Say say something"
x = STDIN.gets.chomp()

puts "What happens over here?"
STDIN.gets.chomp()
puts x + $_
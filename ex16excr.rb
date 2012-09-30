filename = ARGV.first

txtfile = File.open(filename)
print "Here's your file; "
print txtfile.read()
txtfile.close()
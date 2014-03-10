filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you are not OK with that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening and truncating the file. Goodbye!"
target = File.open(filename, 'w')

puts "Now I'm going to ask you for 3 more lines."
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write("#{line1}\n#{line2}\n#{line3}\n")

puts "And finally, we close it."
target.close()
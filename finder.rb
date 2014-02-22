#This is a program to evaluate different methods to find a hidden number in a given range

# needs: a user input range ie ask user for lowest and highest numbers.
# needs: a variable for the "hidden" number (maybe that adds 1 each time the program "finds" it? Alternatively an array of all possibilities)
# needs: a counter that increases for each "guess" the program makes
# needs: a function that makes the "guess" by choosing a number in the centre of the range
# needs: a function to check whether the hidden number is higher or lower than the "guess" and reduces the range accordingly
# needs: a hash to store the results - using the numbers of the range as keys and the number of guesses to reach each number as the value

puts "This program will attempt to discover the fastest method of finding a hidden number within a range."
puts "Please enter the highest number in the range:"
range_high = gets.chomp.to_i

puts "Please enter the lowest number in the range:"
range_low = gets.chomp.to_i

the_range = Array (range_low..range_high)

current_range = the_range

hidden_number = Array (range_low..range_high)

guesses = Hash.new {}

def midpoint(a)
	len = a.length
	a[(len -1) / 2]
end


hidden_number.each do |x|
	guess = midpoint(current_range)
	guess_count = 1
if guess < x 
	guess_count += 1 
	current_range.keep_if { |v| v > guess}
elsif guess > x
	guess_count += 1
	current_range.keep_if { |v| v < guess}
elsif guess == x
	guesses[x] = guess_count
	current_range = the_range
end

end


guesses.each {|x, y| puts "Hidden number: #{x} Guesses: #{y}"}







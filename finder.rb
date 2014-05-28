#This is a program to evaluate different methods to find a hidden number in a given range

# needs: a user input range ie ask user for lowest and highest numbers.
# needs: a variable for the "hidden" number (maybe that adds 1 each time the program "finds" it? Alternatively an array of all possibilities)
# needs: a counter that increases for each "guess" the program makes
# needs: a function that makes the "guess" by choosing a number in the centre of the range
# needs: a function to check whether the hidden number is higher or lower than the "guess" and reduces the range accordingly
# needs: a hash to store the results - using the numbers of the range as keys and the number of div_guesses to reach each number as the value

puts "This program is built to ascertain find the fastest method to find a hidden number in a range of numbers comparing using the golden ratio method (divide the range by 1.62) vs selecting the mid point of the range."
puts "Enter highest integer in the range"

range_high = gets.chomp.to_i

puts "Enter lowest integer in the range"
range_low = gets.chomp.to_i

the_range = Array (range_low..range_high) 

puts "The range right now is #{the_range}"

hidden_number = range_low #this sets the number we have to find - maybe try to put this inside the hash, right from the start?

def midpoint(a) #this makes a guess in the middle of the range of possibilities
	len = a.length
	a[(len -1) / 2]
end

def gold_ratio(a)
	len = a.length
	a[((len-1) / 1.62).floor]
end

def is_higher(g, x)
	g > x
end

def is_lower(g, x)
	g < x
end

guess_count = 0

div_guesses = Hash.new {} #this will store the results when we equally split the range of possibilities
gold_guesses = Hash.new {} #this will store the result when we split the range by golden ratio

# this fills div_guesses 
until hidden_number > range_high
	guess = midpoint(the_range)
	guess_count += 1
	if is_higher(guess, hidden_number)
		the_range.keep_if {|n| n <= guess}
	elsif is_lower(guess, hidden_number)
		the_range.keep_if {|n| n > guess}
	else 
		div_guesses[hidden_number] = guess_count
		the_range = Array (range_low..range_high)
		guess_count = 0
		hidden_number += 1
	end
end

hidden_number = range_low #this resets the hidden number

#this fills gold_guesses
until hidden_number == range_high
	guess = gold_ratio(the_range)
	guess_count += 1
	if is_higher(guess, hidden_number)
		the_range.keep_if {|n| n <= guess}
	elsif is_lower(guess, hidden_number)
		the_range.keep_if {|n| n >= guess}
	else gold_guesses[hidden_number] = guess_count
		the_range = Array (range_low..range_high)
		guess_count = 0
		hidden_number += 1
	end
end

puts "This is the array when /2: #{div_guesses}"
div_total = div_guesses.values.inject {|a,b| a + b}
div_worst = div_guesses.values.max
puts "If you always guess the number in the middle of all the possibilities: Total guesses = #{div_total}, worst case = #{div_worst}"

puts "This is the array when golden ration: #{div_guesses}"
gold_total = gold_guesses.values.inject {|a,b| a + b}
gold_worst = gold_guesses.values.max
puts "If you use the golden ratio to make your guess: Total guesses = #{gold_total}, worst case = #{gold_worst}"













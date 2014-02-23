#This is a program to evaluate different methods to find a hidden number in a given range

# needs: a user input range ie ask user for lowest and highest numbers.
# needs: a variable for the "hidden" number (maybe that adds 1 each time the program "finds" it? Alternatively an array of all possibilities)
# needs: a counter that increases for each "guess" the program makes
# needs: a function that makes the "guess" by choosing a number in the centre of the range
# needs: a function to check whether the hidden number is higher or lower than the "guess" and reduces the range accordingly
# needs: a hash to store the results - using the numbers of the range as keys and the number of div_guesses to reach each number as the value

range_high = 100

range_low = 1

the_range = Array (range_low..range_high) 

hidden_number = range_low #this sets the number we have to find - maybe try to put this inside the hash, right from the start?

def midpoint(a) #this makes a guess in the middle of the range of possibilities
	len = a.length
	a[(len -1) / 2]
end

def gold_ratio(a)
	len = a.length
	a[(len-1) / 1.62]

def is_correct(g, x)
	g == x
end

def is_higher(g, x)
	g > x
end

def is_lower(g, x)
	g < x
end

guess_count = 0

div_guesses = Hash.new {} #this is where we will store the results 

until hidden_number == range_high
	guess = midpoint(the_range)
	guess_count += 1
	if is_higher(guess, hidden_number)
		the_range.keep_if {|n| n <= guess}
	elsif is_lower(guess, hidden_number)
		the_range.keep_if {|n| n >= guess}
	else div_guesses[hidden_number] = guess_count
		the_range = Array (range_low..range_high)
		guess_count = 0
		hidden_number += 1
	end
end

div_guesses.each {|x, y| puts "Hidden number: #{x} Guesses: #{y}"}












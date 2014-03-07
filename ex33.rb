i = 0
y = 60
x = 8
numbers = []

for n in (0..5)
	puts "n at the top = #{n}"
	numbers.push(n)
	puts "Numbers now = #{numbers}"
	puts "n at the bottom = #{n}"
end

puts "The numbers: "

for num in numbers
	puts num
end


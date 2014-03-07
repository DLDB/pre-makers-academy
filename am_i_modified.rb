def am_i_modified(y)
  puts "I am the argument passed to the function : #{y}"
  y = 20
  puts "I am the argument passed to the function and I have been modified in it : #{y}"
end


x = 50
puts "I am a fresh new script variable just assigned : #{x}"
am_i_modified(x)
puts "Hi this is the script variable again, after the function call. As an argument I was modified inside the function, finally am I modified in the script ? #{x}"

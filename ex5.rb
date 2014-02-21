name = 'Zed A. Shaw'
age = 35 #not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
cm_to_1in = 2.54
kg_to_1lb = 0.453592

puts "Let's talk about %s." % name
puts "He's %d inches (or %d cm) tall." % [height, height * cm_to_1in]
puts "He's %d pounds (or %d kg) heavy." % [weight, weight * kg_to_1lb]
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]

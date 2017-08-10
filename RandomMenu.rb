# Random Menu Generator

adj = Array.new
style = Array.new
food = Array.new
puts "Add Food Adjectives Here (Enter \"done\" to end):"
reply = ""
until reply == "done"
  reply = gets.chomp
  adj << reply
end

puts "Add Food Types Here (Enter \"done\" to end):"
reply = ""
until reply == "done"
  reply = gets.chomp
  style << reply
end

puts "Add Food Here (Enter \"done\" to end):"
reply = ""
until reply == "done"
  reply = gets.chomp
  food << reply
end

adj.pop
style.pop
food.pop

=begin
# Test Code
adj = %w(spicy hot cold warm yummy)
style = %w(fried baked sauted)
food = %w(chicken steak)

puts "Add Food Adjectives Here (separate by space): "
ADJ = gets.chomp
adj = %W(#{ADJ})

puts "Add Food Style Here (separate by space): "
STYLE = gets.chomp
style = %W(#{STYLE})

puts "Add Food Here (separate by space): "
FOOD = gets.chomp
food = %W(#{FOOD})
=end

maxFood = [adj.length, style.length, food.length].min
print "How many items would you like to see? "
n = gets.chomp.to_i;
if n > maxFood
  puts "Sorry we only have a max of #{maxFood} items!"
  n = maxFood
end

puts "Menu!".center(20)

a = (0...adj.length).to_a.shuffle
b = (0...style.length).to_a.shuffle
c = (0...food.length).to_a.shuffle
n.times do |i|
  newFood = adj[a[i]] +" "+ style[b[i]] +" "+ food[c[i]]
  puts "#{(i+1).to_s}. #{newFood.capitalize}"
end

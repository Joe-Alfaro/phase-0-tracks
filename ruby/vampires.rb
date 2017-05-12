puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i

garlic = nil
loop do
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp.downcase
  if garlic == "yes" || garlic == "no" || garlic == "y" || garlic =="n"
    break
  else
    puts "Sorry, was that yes or no?"
  end
end

health = nil
loop do
puts "Would you like to enroll in the company’s health insurance?"
health = gets.chomp.downcase
  if health == "yes" || health == "no" || health == "y" || health =="n"
    break
  else
    puts "Sorry, was that yes or no?"
  end
end
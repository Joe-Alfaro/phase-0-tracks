puts "How many employees will be processed?"
employees = gets.chomp.to_i

while employees != 0
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  year = gets.chomp.to_i
  actual_age = Time.new.year - year
  if age == actual_age || age == actual_age - 1
    age_correct = true
  else
    age_correct = false
  end

  garlic = nil
  likes_garlic = false
  loop do
    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    garlic = gets.chomp.downcase
      if garlic == "yes" || garlic == "y"
        likes_garlic = true
        break
      elsif garlic == "no" || garlic == "n"
        likes_garlic = false
        break
      else
        puts "Sorry, was that yes or no?"
      end
  end

  health = nil
  insurance = false
  loop do
    puts "Would you like to enroll in the company’s health insurance?"
    health = gets.chomp.downcase
    if health == "yes" || health == "y"
      insurance = true
      break
    elsif health == "no" || health =="n"
      insurance = false
      break
    else
      puts "Sorry, was that yes or no?"
    end
  end

  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  elsif !age_correct && !likes_garlic && !insurance
    puts "Almost certainly a vampire."
  elsif !age_correct && (!likes_garlic || !insurance)
      puts "Probably a vampire."
  elsif age_correct && (likes_garlic || insurance)
      puts "Probably not a vampire."
  else
    puts "Results inconclusive."
  end

  employees = employees - 1

end

puts "All Employees Processed"
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
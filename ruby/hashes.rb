# hash with client name, age, children, decor theme
client_information = {
  name: "",
  age: "",
  children: "",
  theme: ""
}

#prompt for information
puts "Please enter your name:"
client_information[:name] = gets.chomp
puts "Please enter your age:"
client_information[:age] = gets.chomp.to_i
puts "Please enter the number of children that you have:"
client_information[:children] = gets.chomp.to_i
puts "Please enter you preferred decor type:"
client_information[:theme] = gets.chomp
#print
p client_information

#update a key
yes_or_no = nil
loop do
  puts "Is information correct (y/n)?"
  yes_or_no = gets.chomp.downcase
  if yes_or_no == "y"
    break
  elsif yes_or_no == "n"
    puts "What information needs to be corrected? (Please enter: name, age, children, or theme)"
    correction = gets.chomp.downcase
    loop do
      if correction == "name" || correction == "age" || correction == "children" || correction == "theme"
        break
      else
        puts "Please enter: name, age, children, or theme"
        correction = gets.chomp.downcase
      end
    end
    puts "Please enter correct information for #{correction}"
    client_information[correction.to_sym] = gets.chomp
    break
  else
    puts "Please enter y or n"
  end
end

#print
puts client_information
def calculate (num1, math, num2)
  if math == '+'
    puts num1 + num2
  elsif math == '-'
    puts num1 - num2
  elsif math == '*'
    puts num1 * num2
  elsif math == '/'
    puts num1 / num2
  else
    puts "Invalid entry"
  end
end

#calculate(2,'+',2)
#calculate(2,'-',2)
#calculate(2,'*',2)
#calculate(2,'/',2)
loop do
  puts "Calculate:"
  first_num = gets.chomp
  if first_num == "done"
   break
  else
   first_num = first_num.to_i
  end
  puts "Calculate: #{first_num}"
  symbol = gets.chomp
  puts "Calculate: #{first_num} #{symbol}"
  second_num = gets.chomp.to_i
  puts "Calculate: #{first_num} #{symbol} #{second_num}"
  puts calculate(first_num, symbol, second_num)
end
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

calculate(2,'+',2)
calculate(2,'-',2)
calculate(2,'*',2)
calculate(2,'/',2)
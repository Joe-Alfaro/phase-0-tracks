def method
  puts "This is a method"
  yield
end

method { puts "this is the block" }

model_types = ["sedan", "coupe", "suv", "minivan"]
vehicles = {
  Honda: "Civic",
  Toyota: "Corolla",
  Nissan: "Altima"
}

p model_types
model_types.each do |type|
  puts "#{type}"
end
model_types.map! do |type|
  type + "s"
end
p model_types

p vehicles
vehicles.each do |make, models|
  puts "#{make} makes the #{models}"
end
p vehicles

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers.delete_if {|num| num<5}
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers.keep_if {|num| num<5}
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers.select {|num| num <5}
numbers = [1, 2, 3, 4, 1, 3, 5, 8, 9]
p numbers.drop_while {|num| num <5}

spelled_numbers = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}
p spelled_numbers.delete_if {|digit, word| digit < 5}
p spelled_numbers.keep_if {|digit, word| digit > 1}
p spelled_numbers.select {|digit, word| word == "four"}

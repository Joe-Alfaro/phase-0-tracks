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
model_types.each do |types|
  puts "#{types}"
end
model_types.map! do |types|
  types + "s"
end
p model_types

p vehicles
vehicles.each do |make, models|
  puts "#{make} makes the #{models}"
end
p vehicles
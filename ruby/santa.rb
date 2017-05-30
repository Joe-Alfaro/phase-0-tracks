class Santa
  def speak
    p "Ho, ho, ho! Meeerrrry Christmas!"
  end
  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
#    p "Initializing Santa instance..."
  end
  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer: #{@reindeer_ranking.join(' ')}"
    puts "Age: #{@age}"
  end
  def gender
    @gender
  end
  def ethnicity
    @ethnicity
  end
  def age
    @age
  end
  def gender=(new_gender)
    @gender = new_gender
  end
  def celebrate_birthday
    @age += 1
  end
  def get_mad_at(reindeer)
    @reindeer_ranking.delete_if {|r| r == reindeer}
    @reindeer_ranking << reindeer
  end
end

#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("chocolate chip")

#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")
#p santas

def print_nice(array)
  array.each {|i| puts i.about}
  return array
end

santas = []
example_genders = ['Prefer not to state', 'Male', 'Female']
example_ethnicities = ['Prefer not to state', 'Latino', 'White', 'Black', 'Asian']

#driver code
counter = 0
while counter < 1
  santas << Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
  counter +=1
end

print_nice(santas)
puts "age santa..."
santas[0].celebrate_birthday
print_nice(santas)
puts "bad reindeer..."
santas[0].get_mad_at("Dasher")
print_nice(santas)
santas[0].gender = "Test"
print_nice(santas)
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
  attr_reader :ethnicity
  attr_accessor :age, :gender
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

santa = []
example_genders = ['Prefer not to state', 'Male', 'Female']
example_ethnicities = ['Prefer not to state', 'Latino', 'White', 'Black', 'Asian']

counter = 0
while counter < 100
  santa = Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
  santa.age = rand(140)
  santa.about
  counter +=1
end
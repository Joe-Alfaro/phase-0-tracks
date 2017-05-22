# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
#zombie_apocalypse_supplies.each {|item| puts"#{item} * "}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
def sort(array)
  unordered = array
  ordered = []
  while unordered.length > 0
    index = 0
    first_index = 0
    first = unordered[0]
    while index < (unordered.length-1)
      if (first.downcase <= unordered[index+1].downcase)
        index = index+1
      else
        first = unordered[index+1]
        first_index = index+1
        index = index +1
      end
    end
    ordered.push(first)
    unordered.delete_at(first_index)
  end
  return ordered
end

#p sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def search_array(array, item)
  found = false
  index = 0
  while (index < array.length) || found == true
    if array[index].downcase == item.downcase
      found = true
      break
    else
      index += 1
    end
  end
  if found == false
    return "not found"
  else
    return index
  end
end

p search_array(zombie_apocalypse_supplies, "boots")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def dump_supplies(array)
  p array
  new_array = ["", "", "", "", ""]
  index = 0
  while index < 5
    new_array[index] = array[index]
    index += 1
  end
  new_array
end

p dump_supplies(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

combined_supplies = zombie_apocalypse_supplies + other_survivor_supplies
p combined_supplies.uniq
# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each {|animal, year| puts"#{animal} - #{year}"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

#swap first and last name
def swap(name)
  name.split(' ').reverse.join(' ')
end

#change vowels to next vowel
def next_vowel(name)
  vowels = ['a','e','i','o','u']
  letters = name.downcase.split('')
  index = 0
  letters.length
  while index < letters.length
      vowel = 0
      while vowel < vowels.length-1
          if letters[index] == "u"
            letters[index] = "a"
            break
          elsif letters[index] == vowels[vowel]
            letters[index] = vowels[vowel+1]
            break
          else
            vowel = vowel+1
          end
      end
      index = index + 1
  end
  letters.join('')
end

#change constant to next constant
def next_constant(name)
  constants = ['b','c','d','f','g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  letters = name.split('')
  index = 0
  while index < letters.length
      constant = 0
      while constant < constants.length-1
          if letters[index] == "z"
            letters[index] = "b"
            break
          elsif letters[index] == constants[constant]
            letters[index] = constants[constant+1]
            break
          else
            constant = constant+1
          end
      end
      index = index +1
  end
  letters.join('')
end

#p swap("Joe Alfaro").join(' ')
#p next_vowel("Joe Alfaro")
#p next_constant("bcdfghjklmnpqrstvwxyz")

names = []
coded_names = []
entries = 0
name = ' '
while name != ''
  puts "Enter name:"
  name = gets.chomp
  names.push(name)
  name = swap(name)
  name = next_vowel(name)
  name = next_constant(name)
  coded_names.push(name)
  entries = entries + 1
end
names.pop
coded_names.pop
entries = entries - 1
print = 0
while print < entries
  puts "#{names[print]}'s code name is #{coded_names[print]}"
  print = print + 1
end
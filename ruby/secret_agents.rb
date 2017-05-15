# Need to get the word we would like to encrypt and then loop throught the word and at each letter use .next! to save the next letter to that index.
encryption = nil
def encrypt(encryption)
  index = 0
  while index < encryption.length
    if encryption[index] == "z"
      encryption[index] = "a"
    elsif encryption[index] == "Z"
      encryption[index] = "A"
    else
      encryption[index] = encryption[index].next!
    end
    index += 1
  end
  puts encryption
  return encryption
end

#Need to match the letter at a given index to the letter at a given index in the alphabet and make the letter in the encryption equal to the letter one less in the alphabet index

def decrypt(encryption)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  alphabet_index=0

  if encryption.length < alphabet.length
    while index < encryption.length
      alphabet_index = 0
      while alphabet_index < alphabet.length
        if encryption[index] == "a"
          encryption[index] = "z"
          break
        elsif encryption[index] == "A"
          encryption[index] = "Z"
          break
        elsif encryption[index] == alphabet[alphabet_index]
          encryption[index] = alphabet[alphabet_index-1]
          break
        else
          alphabet_index = alphabet_index+1
        end
      end
      index = index+1
    end
    puts encryption
    return encryption
  else
    puts "Encryption too long to decrypt"
  end
end
#encrypt("abc") # should return "bcd"
#encrypt("zed") # should return "afe"
#decrypt("bcd") # should return "abc"
#decrypt("afe") # should return "zed"
#encrypt(encryption)
#decrypt(encryption)
#decrypt(encrypt("swordfish"))
#Running nested methods didn't work using implicit returns. It worked fine after adding an explicit return.

puts "Do you need an encryption or a decryption?"
selection = gets.chomp.downcase
selection_ok = false
while selection_ok == false
  if selection == "encryption"
    selection_ok = true
  elsif selection == "decryption"
    selection_ok = true
  else
    puts "Sorry, I didn't understand. Did you want and encryption or a decryption?"
    selection = gets.chomp.downcase
    selection_ok = false
  end
end
puts "What's the password?"
encryption = gets.chomp
  if selection == "encryption"
    encrypt(encryption)
  else
    decrypt(encryption)
  end
def search_array(array, number)
  found = false
  index = 0
  while (index < array.length) || found == true
    if array[index] == number
      found = true
      break
    else
      index += 1
    end
  end
  if found == false
    return nil
  else
    return index
  end
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)

def fib(number)
  array = [0, 1]
  index = 1
  if number < 3
    return array
  else
    while index < number - 1
      array.push(array[index]+array[index-1])
      index += 1
    end
  end
  return array
end

p fib(6)
if fib(100).last == 218922995834555169026
  puts "nailed it"
else
  puts "nope"
end

#Sorting method - would have a variable called smallest. would loop through and compare smallest to every index and when the index was smaller than the smallest would be replaced by index. after going through all the indexes would put smallest into a new array and delete it from the old array and loop through again.

def sort_integers(unordered)
  ordered = []
  while unordered.length > 0
    index = 0
    smallest_index = 0
    smallest_num = unordered[0]
    while index < (unordered.length-1)
      if (smallest_num <= unordered[index+1])
        index = index+1
      else
        smallest_num = unordered[index+1]
        smallest_index = index+1
        index = index +1
      end
    end
    ordered.push(smallest_num)
    unordered.delete_at(smallest_index)
  end
  return ordered
end

array = [0, 4, 565, 89, 17, 25, 40, 24]
puts "#{array} ---> #{sort_integers (array)}"
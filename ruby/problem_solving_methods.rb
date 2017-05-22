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
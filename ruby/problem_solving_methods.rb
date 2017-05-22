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
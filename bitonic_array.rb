arr = [1, 3, 5, 7, 6, 4, 2]


def find_bitonic_point(array, index = 0)
  
  return index if array.length == 1
  
  if array.length == 2
    if array[0] < array[1]
      return index + 1
    else
      return index
    end
  end
  
  start = array.length / 2
  
  if array[start] > array[start + 1] && array[start - 1] < array[start]
    return start + index
  elsif array[start] < array[start + 1] && array[start] > array[start - 1]
    return find_bitonic_point(array[start+1..array.length - 1], start + 1)
  elsif array[start] > array[start + 1] && array[start] < array[start - 1]
    return find_bitonic_point(array[0...start])
  end
end


def find(input_array, value)
  bi_index = find_bitonic_point(input_array)
  middle = input_array[bi_index]
  return true if input_array[bi_index] == value
  return false if value > middle
  return find(input_array[0...bi_index], value) || find(input_array[bi_index+1..input_array.length-1], value)
end


p find(arr, 3)
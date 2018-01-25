## Write a function that returns the nth power number, 
## where a power number is a number that can be expressed as 
## Note that the power number sequence 
## is in ascending order (4, 8, 9, 16, 27, 32, …).

def nth_power(k)
  nums = []
  current = 0
  until nums.length >= k
    nums << current if check_pwr(current)
    current += 1
  end
  return nums
end

def check_pwr(num)
  # intialize current to 2 since num^1 is not a valid power
  current = 2
  # until current is greater than the square root of number (^2 is the lowest)
  until current > Math.sqrt(num)
    # assign a new variable to current
    temp = current
    # while temp is less than or equal to number
    while temp <= num
      # temp is temp times current value which is 2 -> 2*2
      temp = temp * current
      # return true if temp == number at any point
      return true if temp == num
    end
    #increment
    current += 1
  end
  false
end

p nth_power(19)
# [4, 8, 9, 16, 25, 27, 32, 36, 49, 64, 81, 100, 121, 125, 128, 144, 169, 196, 216]
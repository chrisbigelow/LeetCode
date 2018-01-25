def is_valid_number(string)
  # remove whitespace
  clean = string.strip
  
  return false if clean.length == 0
  return false if clean.length == 1 && !(clean.is_a? Numeric)
  
  valid = ["+", "-", ".", "e", "0","1","2","3","4","5","6","7","8","9"]
  digits = ["0","1","2","3","4","5","6","7","8","9"]
  after_e = ["0","1","2","3","4","5","6","7","8","9","+","-"]
  hit_e = false
  hit_point = false
  clean.each_char do |char|
    return false unless valid.include?(char)
    return false if hit_e && !after_e.include?(char)
    return false if hit_point && !digits.include?(char)
    hit_e = true if char == "e"
    hit_point = true if char == "."
  end
  
  return true
end

p is_valid_number("11.5") #true
p is_valid_number("abc") #false
p is_valid_number("2e10") #true
p is_valid_number("10e5.4") #false
p is_valid_number("") #false
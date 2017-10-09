def sum_to(n)
  return nil if n < 0
  return 0 if n == 0
  n + sum_to(n-1)
end

def add_numbers(nums_array)
  return nums_array[0] if nums_array.length <= 1
  nums_array[0] + add_numbers(nums_array[1..-1])
end

# Γ(n) = (n-1)!
def gamma_fnc(n)
  return 1 if n <= 1
  (n - 1) * gamma(n - 1)
end

# find out if favorite offered, recursively
def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors[0] == favorite
  ice_cream_shop(flavors[1..-1], favorite)
end

def reverse(str)
  return str if str.length <=1
  reverse(str[1..-1]) + str[0]
end

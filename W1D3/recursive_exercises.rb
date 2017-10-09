
require 'byebug'

# def range(start_num, end_num)
#   return [] if end_num < start_num
#   return [start_num] if start_num + 1 == end_num
#   # range_arr = []
#
#   [start_num] + range((start_num + 1), end_num)
# end
#
# def range2(start_num, end_num)
#   return [] if end_num <= start_num
#   return start_num if end_num - 1 == start_num
#
#
#
# end
#
# def iterative_sum(array)
#   return nil if array.empty?
#
#
#
# end
#
# def recursive_sum(array)
#   return nil if array.empty?
#   return array[0] if array.length == 1
#
#   array[0] + recursive_sum(array[1..-1])
# end
#
# def recursive_sum(array)
#   return nil if array.empty?
#   return array[0] if array.length == 1
#
#   array[0] + recursive_sum(array[1..-1])
# end
#
# puts recursive_sum([-1,-2,-3, 1,2,3])
#
#
# def range(start_num, end_num)
#   return [] if end_num < start_num
#   return [start_num] if start_num + 1 == end_num
#   # range_arr = []
#
#   [start_num] + range((start_num + 1), end_num)
# end
#
# p range(1,5)
#
#
# def recursion1(b,n)
#   return 1 if n == 0
#   b * recursion1(b,n-1)
# end
#
# p recursion1(2,2)
#
# def recursion2(b,n)
#   return 1 if n == 0
#   return b if n == 1
#   rec_odd = recursion2(b, (n - 1) / 2)
#   rec_even = recursion2(b, n/2)
#
#   if n.even?
#     rec_even * rec_even
#   else
#     b * rec_odd * rec_odd
#   end
# end
#
# p recursion2(2,4)
#


#
# def deep_dup(array)
#   return_array = []
#   array.each do |el|
#     unless el.is_a?(Array)
#       return_array << el
#     else
#       return_array << deep_dup(el)
#     end
#
#   end
#   return_array
# end
#
# p deep_dup([1,2,[3]])


# def iter_fib(n)
#   return nil if n < 0
#   fib_array = [0,1]r
#   return fib_array[n] if n <= 1
#   (2..n).each do |num|
#     fib_array << fib_array[num-2] + fib_array[num-1]
#   end
#   fib_array
# end
#
# def recursive_fib(n)
#   return 0 if n == 0
#   return 1 if n == 1
#
#   return_array = []
#   return_array << recursive_fib(n - 2) + recursive_fib(n - 1)
#
#   return_array
# end

array = [1,2]
def subsets(array)
  return_array = []
  return [[]] if array.empty?
  debugger
  last = array[-1]
  previous = subsets(array[0...-1])
  sub_arr = previous.map{ |el| el + [last] }
  previous + sub_arr

end

def factorial(n)
  return 1 if n == 1
  n * factorial(n-1)
end

def permutations(array)
  # x,y = y,x
  return array if array.length == 1
  last = array[-1]
  prev = permutations(array[0...-1])
  sub_array = prev.map do |arr|
    arr[0..idx] + [last] + arr[(idx + 1)..-1]
  end
  sub_array



end

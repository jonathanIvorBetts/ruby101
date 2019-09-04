# [1,2,3]

# init like
arr = []
# new new new
arr1 = Array.new(5)

arr2 = Array.new(2, true)

arr3 = Array.new(2, "abc")
arr3.first.upcase!
puts arr3

arr4 = Array.new(25) {"abc"}
pos = arr4.length-6

arr4[pos].upcase!
puts arr4

puts arr4.length

# array of symbols instantiated with %i
arr_sym = %i(w a s d)
puts arr_sym

puts arr_sym.size


# slicing up eyballs
arr = [1,2,3,4,5,6,7,8,9]
puts arr[2..6]

# math rock stuff
[12345, 2,3,4,5] - [3, 5]
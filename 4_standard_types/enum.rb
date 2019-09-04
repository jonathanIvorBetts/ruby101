
# map
[5, 10, 15, 20, 25, 30, "allthewhile"].map { |v| v * 6}
# reduce
arr = [1,3,5,7,2,4,6,8]
# sort
arr = [1,3,5,7,2,4,6,8].reverse
# select
arr = [1,3,5,7,2,4,6,8]
arr.select{ |x| x.even? }
puts arr
arr.select!{ |x| x.even? }
puts arr

# each cons for sequential iterative operations e.g.
[1,2,3,4,5].each_cons(3) { |v| p v }
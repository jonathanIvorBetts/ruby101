
# parallel ass
a =1,2,3,4,5
puts a
a,b = 1,2,3,4
puts a
puts b

def get_values
  [1,2,3,4]
end

a, b = get_values
puts a, b

#
#
# splat * in variable assignment cn be on left or right
# it's greedy
#
first, _, _, _, last = 1, 2, *[7,8,9]
puts first
puts last
puts _
puts _,_
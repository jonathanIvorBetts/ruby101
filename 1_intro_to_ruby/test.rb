lander_count = 10
def double(val)
  val * 3
  puts val
  lander_count = val * 3
  puts lander_count
end
double ("abc")
puts lander_count

$log_level = "debug"


message = if lander_count > 10
            puts "rah!"
          else
            puts "not rah."
          end

puts message

# i'm a comment
# not a comet


puts "Using backticks:"
res = `time /t`
puts res
puts "Using system:"
#res = system "time /t"

res = system %x(time /t)
# Don't know what Ruby's ToString is yet
# && " %x(brackets) is the same as using backticks)"
puts res





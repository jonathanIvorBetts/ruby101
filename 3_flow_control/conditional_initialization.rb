
ship ||= Spaceship.new

# does the same, but more verbose
ship = Spaceship.new unless ship

a || a = 10
# will error because a does not exist yet

a ||= 10
# works because the variable will be created because Ruby can define in statement

### FAIL WHEN USING ||= FOR CONDITIONAL INITIALIZATION OF BOOLEAN
# irb(main):001:0> flag ||= true
# => true
# irb(main):002:0> flag
# => true
# irb(main):003:0> flag = false
# => false
# irb(main):004:0> flag
# => false
#
# HERE THE IDIOM BREAKS DOWN !!!
#
# irb(main):005:0> flag ||= true
# => true
# irb(main):006:0> flag
# => true



# using and, or in flow control situations
lander = Lander.locate(lander_id) and lander.recall
# second part of this condition (after and) will only be executed if the initial condition is met

# alternatively could be written
lander = Lander.locate(lander_id)
lander.recall if lander

# or flow control
if engine.cut_out?
  engine.restart or enable_emergency_power
end

# interchangeable with...
if engine.cut_out?
  enable_emergency_power unless engine.restart
end
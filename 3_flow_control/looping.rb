# while loops
while high?
  sound_sytem.play(cosmic_disco)
end

# can be dome on 1 line when simple
while high? do sound_sytem.play(cosmic_disco) end

# or even like...
sound_sytem.play(cosmic_disco) while high?

# until loops can work in the same way, but backwards

# BLOCK
#  Note: blocks will always execute at least once since condition met not determined until the end of the block
begin
  # multiple expressions
  lighting.start_flashing
  sound_system.play(cosmic_disco)
end while high?

begin
  lighting.slowly_dim
  temperature.warm_up
end until jiggy_time.is_over?
# END BLOCKS


# for Loops
for i in [1,2,3]
  puts i
end

for i in (1..99)
  puts i
end


# for each... (each do, or just each)

[1,2,3].each do
 puts "hello, ok?"
end

ships = Spaceships.all
ships.each { |ship| puts " " + ship.name }

example_numbers = [1,2,3]
example_numbers.each { |i| puts "? how do I get he array item???" + i }

### loop!
loop do
  go_another_light_year
  puts "This isn't the delta quadrant, yet"
end


# loops making use of numbers
10.upto(20) {|x| puts x}
99.downto(-1001) {|x| puts x}
3.times { puts "this is put thrice" }
1.step(10,2) { |x| puts x }
0.step(101, 5) { |y| puts y }


# next (to go back to move loop iteration ahead)
while message = comms.get_message
  next if message.type == "sync"
  message.process
end

# break (to exit the loop)
while message = comms.get_message
  message.process
  break if message.type == "voice"
end

# assign from loops
text = while message = comms.get_message
         message.process
         break message.text if message.type == "voice"
       end


# redo!
#  repeats the iteration without re-evaluating loop condition
i = 0
while i < 3
  print "Please enter a positive number: "
  input = gets.to_i
  redo if input <= 0
  i += 1
end


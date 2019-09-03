
# Handling Exceptions

# Basic example within begin end block. not very useful
def launch
  begin
    batten_hatches
  rescue
    puts "Couldn't do that"
    return false
  end
  light_seatbelt_warning
end

# back trace and can handle error occurring in any of the other routines
def launch
   batten_hatches
   light_seatbelt_warning
  true
rescue
  puts "Exception!!!"
  false
end


## RuntimeError > StandardError > Exception
def  launch
  baten_hatches
  light_seatbelt_warning
  true
rescue LightError
  puts "Lights out, no big deal"
  true
rescue StandardError => e
  puts e.message
  false
end


# Exception Class
begin
  ship = Spaceship.new
  ship.launch
rescue Exception => e
  puts e.message
  puts e.backtrace
end


# Raising exceptions...
def batten_hatcjes
  # ...
  raise "Door Jam!"
  # ...
end

# specifics
def batten_hatches
  # ...
  raise HatchErorr, "Door Jam!"
  # ...
end

# Re-raising

rescue HatchErorr => err
  puts $!.message
  raise
end

# Cleanup
def batten_hatches
  hatch_file = File.open("hatches.txt")
  # ...
  raise HatchError, "Door Jam!" if door.jammed?
  # ...
  true
rescue SystemCallError => e
  # handle system call errors !!! ensure !!!
  false
else
  puts "No exeps"
ensure
  hatch_file.close if hatch_file
end


# retry
def batten_hatches
  hatch_list = API.request("/hatches")
  # ...
rescue RuntimeError => e
  attemptes ||= 0
  # used as in conditional_initialization.rb
  attempts += 1
  if attempts < 3
    puts e.message + ". Retrying request"
    retry
  else
    puts "Req fail :''''''( "
    raise
  end
end

# rescue - obfucscates errors so use wisely
batten_hatches rescue false


# Ruby throw / catch OR actually catch (a thing), throw (an exception)
# Not exactly exception flow control as can be used across separate methods - see below this next code block

result = catch :abort do
  probes.each do |probe|
    while sample = probe.get_sample
      result = sample.process
      throw :abort, result.message if result.code != :ok
      puts result.message
      sample.store
    end
    "All samples sampled"
  end
end

puts result


# throw catch split across 2 distinct code blocks
def handle(sample)
  result = sample.process
  throw(:abort. result.message) if result.code != :ok
  puts result.message
  sample.store
end

result = catch(:abort) do
  probes.each do |probe|
    while sample = probe.get_sample
      handel(sample)
    end
  end
  "All samples processed"
end

# hello this is a git repo test






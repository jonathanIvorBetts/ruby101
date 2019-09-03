# if_else

# vanilla
if can_launch
  launch
else
  wait
end

# as expression
message = if lander_cnt > 10 then "Launching" else "waiting" end

# concise version
launch if can_launch

# elsif
if fuel_level > 50
  set_fuel_indicator("it's gweeeeen")
elsif fuel_level > 25
  set_fuel_indicator("amber")
else
  set_fuel_indicator("blinkin red!")
end

# ONLY 'nil' + 'false' are evaluated as false. Everything else evals true, even 0 (zero) !!!

# if not ...
# use for less confusing conditional statements
unless fuel_level < 25
  launch
end

# unless

# ternary operator
can_launch? ? launch : wait



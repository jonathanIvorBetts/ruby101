# Case Statements

case what_thing
when "thing one"
  thing.action_thing1
when
  thing.action_other_thing

   else
  thing.blah
end

# can be used as expression to assign to variable

  thrust_power = case distance_to_dock
                 when "case 1" then 1
                 when "case 2" then 2
                 #case else then 0
                 when "case etc" then 0

                 end

# case else used in the standard way, written very much like SQL




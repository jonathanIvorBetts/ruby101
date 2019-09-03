class MassiveSpaceship
  def launch(destination)
    @destination = destination
    # go towards destination
  end
  def destination
    @destination
  end
end




ship = MassiveSpaceship.new
ship.launch("Earth")

puts ship.inspect
p ship

puts ship.destination



#Accessors

class MassiveSpaceship2
  attr_accessor :destination, :departure
  attr_writer :name, :boarded
  attr_reader :boarded

  def cancel_launch
    destination = "" # creates local var...
    self.destination = ""
    self.departure = ""
  end
end

ship2 = MassiveSpaceship2.new
ship2.boarded = false
ship2.name = "Arthur"
ship2.departure = "Enceladus"


puts ship2.departure

p ship2


class VirtualAttrSpaceship

  def destination
    @autopilot.destination
  end
  def destination=(new_destination)
    @autopilot.destination = new_destination
  end
end




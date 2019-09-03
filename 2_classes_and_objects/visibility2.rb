class Spaceship
  def launch
    batten_hatches
    # do other fun launchy business
  end

  def batten_hatches
    puts "Batten th haches!"
  end
  private :batten_hatches
end

class SpritelySpaceship < Spaceship
  def initialize
    batten_hatches # via the sub class the "private" method declaration is
  end
end



ship = Spaceship.new
ship.send :batten_hatches # this is the 'backdoor' or reason why private is only a partial private directive


class Spaceship
  def self.disable_engine_containment
    # danger! danger! high voltage!
  end

  # not an error but does jack
  private :disable_engine_containment

  # the REAL way to make a method private
  private_class_method :disable_engine_containment

end

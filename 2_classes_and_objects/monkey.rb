class Spaceship
  private
  def batten_hatches
    puts "Batten the hatches!"
  end
end


ship = Spaceship.new

class Spaceship
  # private # otherwise this class method will be accessible
  def baten_hatches
    puts "Avast!"
  end
end

ship.batten_hatches

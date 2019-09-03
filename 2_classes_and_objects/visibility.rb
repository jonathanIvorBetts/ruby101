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

ship = Spaceship.new
ship.send :batten_hatches # this is the 'backdoor' or reason why private is only a partial private directive
class Spaceship
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    name == other.name
  end
end

ship1 = Spaceship.new("Serena")
ship2 = Spaceship.new("Serena")

# equal? will false as it's looking for equality at object level
puts ship1.equal?(ship2)

# == will true as it's looking for equality at object property level (i think)
puts ship1.name == ship2.name
# can be written as...
puts ship1 == ship2

# since an == override exists

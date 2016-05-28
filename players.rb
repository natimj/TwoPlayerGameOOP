


class Player

  attr_reader :life, :points, :name

  def initialize(name)
    @name = name
    @life = 3
    @points = 0
    # initialize the life points and name
  end

  def gain_points
    @points += 1
  end

  def lose_health
    @life -=1
  end

end





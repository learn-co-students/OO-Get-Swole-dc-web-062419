class Membership
  attr_reader :cost, :lifter, :gym
  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    self.class.all << self
  end

  def self.all
    @@all
  end
end

class Membership
  attr_reader :cost, :lifter, :gym

  @@all= []

  def initialize(lifter, cost, gym)
    @lifter = lifter 
    @cost = cost
    @gym = gym
    self.class.all << self
 
  end

  def self.all
    @@all
  end

  
end

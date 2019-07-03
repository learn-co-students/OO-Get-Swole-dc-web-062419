class Membership
  attr_reader :cost, :gym, :lifter
  attr_writer :lifter 

  @@all = []
  
  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @@all << self
    @lifter = lifter
  end

  def self.all
    @@all
  end

  def self.gyms_by_lifter(lifter)
    memberships = @@all.select {|m| m.lifter == lifter}
    # binding.pry
    print memberships.map {|membership| membership.gym.name} 
    memberships.map {|membership| membership.gym }
  end

end

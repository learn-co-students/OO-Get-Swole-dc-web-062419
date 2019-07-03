class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end


  def memberships
    Membership.all.select {|m| m.gym == self }
  end

  def who_goes_here
    memberships.map{|m| m.lifter.name } 
    # roster
  end

  def gyms_rep
    gym_total_lift = 0
    memberships.each{|m| gym_total_lift += m.lifter.lift_total}
    gym_total_lift
  end

end

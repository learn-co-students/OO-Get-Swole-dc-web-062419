class Gym
  attr_accessor :name, :lifter, :memberships

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def get_membership
    Membership.all.select {|member| member.gym == self}
  end

  def get_lifters
    lifters = []
    self.get_membership.map { |membership| membership.lifter.name} 

  end

  def lift_total
    total = 0 
    self.get_membership.each { |membership| total += membership.lifter.lift_total }
    return total
  end
      
      

  
end

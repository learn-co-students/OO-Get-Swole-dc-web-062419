# Get a list of all lifters
# Get a list of all the memberships that a specific lifter has
# Get a list of all the gyms that a specific lifter has memberships to
# Get the average lift total of all lifters
# Get the total cost of a specific lifter's gym memberships
# Given a gym and a membership cost, sign a specific lifter up for a new gym

class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.average_lift_total
    lifts = all.map {|lifter| lifter.lift_total}
    lifts.sum.to_f / lifts.size.to_f
  end

  def total_cost
    total_cost = 0
    memberships.map {|membership| total_cost += membership.cost}
    total_cost
  end

  def sign_up(gym,cost)
    Membership.new(self,gym,cost)
  end
end

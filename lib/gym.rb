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

  def get_memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def get_lifters
    self.get_memberships.map {|membership| membership.lifter}
  end

  def get_lifters_average
    sum = 0
    self.get_lifters.each do |lifter|
      sum += lifter.lift_total
    end
    sum
  end
end

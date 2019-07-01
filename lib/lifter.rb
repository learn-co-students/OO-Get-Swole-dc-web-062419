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

  def get_memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def get_gyms
    self.get_memberships.map {|membership| membership.gym}
  end

  def add_membership(gym, cost)
    Membership.new(cost, self, gym)
  end

  def self.get_average
    sum = 0
    @@all.each do |lifter|
      sum += lifter.lift_total
    end
    sum/@@all.length
  end

  def get_total_cost
    sum = 0
    self.get_memberships.each do |membership|
     sum += membership.cost
    end
    sum
  end
end

class Lifter
  attr_accessor :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership| 
        membership.lifter == self
    end
  end

  def get_gyms
    # binding.pry
      self.memberships.map do |membership|
        membership.gym
      end
      end
  
  def add_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

  def self.avg_lift_total
    total_lift_weight = 0
    @@all.each do |lifter|
      total_lift_weight += lifter.lift_total
    end
    
    "#{(total_lift_weight / @@all.count).to_f} lbs"

  end

  def total_cost
    # binding.pry
    
    self.memberships.sum do |memberships|
      # binding.pry
      memberships.cost
    end
  end


end

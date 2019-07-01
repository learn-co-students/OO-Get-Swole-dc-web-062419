require 'pry'
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

  def get_all_memberships
  	Membership.all.select {|member| member.lifter == self}
  end

  def get_all_gyms
  	get_all_memberships.select {|gym| gym.lifter == self}
  end

  def self.get_lift_total
  	total_weight = self.all.map{|lifter| lifter.lift_total}  
  	total_weight.sum / total_weight.size.to_f 
  end

  def get_cost_total
    cost_total = 0
    get_all_memberships.each {|member| cost_total += member.cost}
    cost_total 
    
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end

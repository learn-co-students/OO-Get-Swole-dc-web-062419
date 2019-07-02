class Lifter
  attr_reader :name, :lift_total
  attr_writer :LIFTERS, :lift_total
  attr_accessor :gym, :membership



  LIFTERS = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    LIFTERS << self
  end

  def self.all
    LIFTERS 
  end 

  def join_gym(gym, membership)
    self.gym = gym
    self.membership = membership
    self.lift_total = membership.cost
  end 



  def memberships 


  end 






end

class Gym
  attr_reader :name
  attr_writer :GYMS
  GYMS = []

  def initialize(name)
    @name = name
    GYMS << self
  end

  def self.all 
    GYMS
  end 


  def memberships
    Lifter.all.select do |lifter|
      if lifter.gym == self
        lifter.membership 
      end 
    end 


  def lifters
    binding.pry

  end 
    

  end 





end

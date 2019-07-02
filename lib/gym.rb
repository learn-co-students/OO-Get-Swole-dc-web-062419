require 'pry'
class Gym
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def gym_memberships
     Membership.all.select do |membership|
        # binding.pry
        membership.gym == self
      end
      # binding.pry
  end

  def lifters
      self.gym_memberships.map do |membership|
        membership.lifter
      end
  end

    def lift_total
      self.lifters.sum do |lifters|
          lifters.lift_total
      end
    end



end

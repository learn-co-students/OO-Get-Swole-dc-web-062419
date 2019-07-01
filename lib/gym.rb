class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_all_memberships_at_gym
    Membership.all.select {|member| member.gym == self}
  end
  def get_all_lifters
  get_all_memberships_at_gym.select {|lifter| lifter.gym == self}
  end 

  def get_all_names
    names_array = []
    get_all_lifters.each {|mem| names_array << mem.lifter.name}
    names_array
  end
  def get_combined_lift_totals
    add_lift_total = 0
    get_all_lifters.each {|mem| add_lift_total += mem.lifter.lift_total}
    add_lift_total
  end
end

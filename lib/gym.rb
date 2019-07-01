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

  def get_all_memberships_at_gym
  	Membership.all.select {|member| member.gym == self}
  end

  def get_all_lifters
  	get_all_memberships_at_gym.select {|lifter| lifter.gym == self}
  end

  def get_all_names
  	names_array = []
  	get_all_lifters.select {|member| names_array << member.lifter.name}
  	names_array
  end

  def get_combined_lift_totals
  	add_lift_total = 0
  	get_all_lifters.each {|member| add_lift_total += member.lifter.lift_total}
  	add_lift_total
  end

end

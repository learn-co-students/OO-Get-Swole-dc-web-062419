# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'


# Lifter.new(name, lift_total)
# Membership.new(lifter,gym,cost)
# Gym.new(name)

bob = Lifter.new("Bob",200)
sally = Lifter.new("Sally", 150)
jane = Lifter.new("Jane",250)
golds = Gym.new("Golds Gym")
fitness24 = Gym.new("Fitness 24")
Membership.new(bob,golds,200)
Membership.new(jane,golds,180)
Membership.new(sally,fitness24,300)
Membership.new(jane,fitness24,280)

p "Get a list of all lifters"
p Lifter.all.first.class == Lifter
p Lifter.all.size == 3
p "Get a list of all the memberships that a specific lifter has"
p jane.memberships.size == 2
p bob.memberships.size == 1
p "Get a list of all the gyms that a specific lifter has memberships to"
p bob.gyms.size == 1
p bob.gyms[0] == golds
p "Get the average lift total of all lifters"
p Lifter.average_lift_total == (200+150+250).to_f/3
p "Get the total cost of a specific lifter's gym memberships"
p jane.total_cost == 180+280
p sally.total_cost == 300
p "Given a gym and a membership cost, sign a specific lifter up for a new gym"
  # ********* see above **********
p "Get a list of all memberships"
p Membership.all.first.class == Membership
p Membership.all.size == 4
p "Get a list of all gyms"
p Gym.all.first.class == Gym
p Gym.all.size == 2
p "Get a list of all memberships at a specific gym"
p golds.memberships.size == 2
p golds.memberships.first.class == Membership
p "Get a list of all the lifters that have a membership to a specific gym"
p golds.lifters.size == 2
p golds.lifters.include?(bob)
p golds.lifters.first.class == Lifter
p golds.lifters == [bob,jane]
p "Get a list of the names of all lifters that have a membership to that gym"
p golds.lifter_names.size == 2
p golds.lifter_names.include?("Bob")
p golds.lifter_names.first.class == String
p golds.lifter_names == ["Bob","Jane"]
p "Get the combined lift total of every lifter has a membership to that gym"
p golds.combined_lift_total == 450

# binding.pry

puts "Gains!"

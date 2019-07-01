# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
jesse = Lifter.new("Jesse", 50)
nick = Lifter.new("Nick", 60)
p Lifter.all.size == 2
globo_gym = Gym.new("Globo Gym")
p jesse_membership = Membership.new(99, jesse, globo_gym)
p jesse.get_all_memberships.size == 1
p jesse.get_all_gyms.size == 1
p Lifter.get_lift_total == 55
p jesse.get_cost_total == 99
p "-------------"
jesse.sign_up("golds", 50)
p jesse.get_all_gyms.size == 2
nick.sign_up("planet", 75)
p Membership.all
p jesse.get_cost_total
p globo_gym.get_all_memberships_at_gym
p globo_gym.get_all_lifters
p globo_gym.get_all_names
p globo_gym.get_combined_lift_totals == 50

binding.pry

puts "Gains!"

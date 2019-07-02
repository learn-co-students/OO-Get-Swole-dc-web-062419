# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
require 'pry'
# test code goes here


ava = Lifter.new("ava", 250)
 john = Lifter.new("john", 220)

# puts ava.name
# puts john.name
# puts Lifter.all
local = Gym.new("Local")
tired = Gym.new("tired")
drone = Gym.new("drone")
# puts Gym.all
 ava.add_membership(20, local)
 ava.add_membership(50, tired)
 john.add_membership(50, tired)
john.add_membership(50, local)
# puts ava.add_membership(30, drone)
# puts Membership.all
# puts ava.memberships
#  puts ava.memberships
# puts ava.get_gyms
# puts ava.get_gyms
# puts ava.total_cost
# puts Gym.all
# puts tired.lifters
puts local.lift_total


binding.pry

puts "Gains!"

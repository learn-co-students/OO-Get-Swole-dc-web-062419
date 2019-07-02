
# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lisa = Lifter.new("Lisa", 50)
karl = Lifter.new("Karl", 100)
chinee = Lifter.new("Chinee", 200)

gold = Gym.new("Gold's Gym")
onelife = Gym.new("One Life")
wework = Gym.new("WeWork Gym")

lisa.add_membership(20, gold)
lisa.add_membership(30, wework)
lisa.add_membership(30, onelife)
karl.add_membership(30, onelife)

lisa.get_list_memberships
lisa.get_list_gyms

Lifter.get_lift_average

onelife.get_membership
onelife.get_lifters




binding.pry


puts "Gains!"
# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
rob = Lifter.new("Rob", 200)
michelle = Lifter.new("Michelle", 100)
lisa = Lifter.new("Lisa", 100)
golds = Gym.new("Gold's Gym")
lifetime = Gym.new("Lifetime Fitness")

rob.add_membership(golds, 50)
rob.add_membership(lifetime, 30)
michelle.add_membership(lifetime, 30)
lisa.add_membership(lifetime, 30)




binding.pry

puts "Gains!"

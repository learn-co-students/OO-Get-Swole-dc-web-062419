# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

kolton = Lifter.new("Kolton", 0)
bobby = Lifter.new("Bobby", 0)
sarah = Lifter.new("Sarah", 0)
juan = Lifter.new("Juan", 0)

la_fitness = Gym.new("LA Fitness")
la_mem = Membership.new(50)
golds = Gym.new("Golds Gym")
golds_mem = Membership.new(100)
orange_theory = Gym.new("Orange Theory Fitness")
orange_mem = Membership.new(150)

kolton.join_gym(la_fitness,la_mem)
bobby.join_gym(golds, golds_mem)
sarah.join_gym(orange_theory, orange_mem)
juan.join_gym(golds, golds_mem)


puts "Should return the lifter instances that have a memberships at the gym"
golds.memberships

binding.pry

puts "Gains!"

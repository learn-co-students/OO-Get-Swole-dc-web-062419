# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#data

frank = Lifter.new("Frank", 327)
yolanda = Lifter.new("Yo-Landa", 540)
ursula = Lifter.new("Urs", 9999999)
ymca = Gym.new("YMCA")
et = Gym.new("Earth Treks")
crossfit = Gym.new("CrossFit")
frank.sign_up(ymca)
yolanda.sign_up(crossfit)
ursula.sign_up(et)
ursula.sign_up(ymca)
frank.sign_up(et)
frank.sign_up(crossfit)




#1 Lifter
puts "Get a list of all lifters. Is the result an array? Or maybe a hash would be more useful?"
puts Lifter.all.class == Array
puts "Is there something in the array?"
puts Lifter.all != []

puts "-------------------------"
# puts "Get a list of all the memberships that a specific lifter has"
puts frank.memberships.each {|m| puts "#{m.lifter.name} has a membership at the #{m.gym.name} for $#{m.cost}."}
puts yolanda.memberships.each {|m| puts "#{m.lifter.name} has a membership at the #{m.gym.name} for $#{m.cost}."}
puts ursula.memberships.each {|m| puts "#{m.lifter.name} has a membership at the #{m.gym.name} for $#{m.cost}."}

puts "-------------------------"
#Get a list of all the gyms that a specific lifter has memberships to
puts Membership.gyms_by_lifter(ursula)
#but this is really both a)on the wrong class for the instructions and b) sort of irrelevant after the above test.

puts "-------------------------"
#Get the average lift total of all lifters
puts Lifter.average

puts "-------------------------"
#Get the total cost of a specific lifter's gym memberships
puts "Frank spends $#{frank.total_cost} on gyms"
puts "Yolanda spends $#{yolanda.total_cost} on gyms"
puts "Ursula spends $#{ursula.total_cost} on gyms"

puts "-------------------------"
#Given a gym and a membership cost, sign a specific lifter up for a new gym
yolanda.sign_up(et, 90) 
puts yolanda.memberships.each {|m| puts "#{m.lifter.name} has a membership at the #{m.gym.name} for $#{m.cost}."}

puts "-------------------------"
#Get a list of all memberships
Membership.all.each {|membership| puts "#{membership.lifter.name} has a membership at #{membership.gym.name} for #{membership.cost}" }

puts "-------------------------"
# Get a list of all gyms
puts Gym.all

puts "-------------------------"
# Get a list of all memberships at a specific gym
puts et.memberships

puts "-------------------------"
# Get a list of all the lifters that have a membership to a specific gym
puts et.who_goes_here
Gym.all.each {|gym| puts "#{gym.name} members: #{gym.who_goes_here.join(", ")}" }

puts "-------------------------"
# Get a list of the names of all lifters that have a membership to that gym
# See above. 

puts "-------------------------"
# Get the combined lift total of every lifter has a membership to that gym
puts et.gyms_rep
Gym.all.each {|gym| puts "#{gym.name}'s  #{gym.who_goes_here.length} members, as a group, lift a total of #{gym.gyms_rep} pounds, for an average per-person lift total of #{gym.gyms_rep/gym.who_goes_here.length} pounds." }






# binding.pry



puts "Gains!"

class Lifter
  attr_reader :name, :lift_total, :total_cost

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @total_cost = 0
    self.class.all << self
  end

  def self.all
    @@all
  end

  def sign_up(gym, cost=50)
    huge_mistake = Membership.new(cost, gym, self)
    @total_cost +=cost
    huge_mistake
    # huge_mistake.lifter = self
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def self.average
    total_lift_total = 0
    self.all.each {|lifter| total_lift_total += lifter.lift_total}
    puts "The Total is #{total_lift_total}"
    puts "The average is #{total_lift_total/self.all.length}"
  
  end  



end

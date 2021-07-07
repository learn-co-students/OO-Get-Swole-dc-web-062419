class Lifter
  attr_reader :name, :lift_total
  attr_accessor :lift_sum, :member_cost

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
   
  end

  def self.all
    @@all
  end

  def add_membership(cost, gym)
    Membership.new(self,cost, gym)
    
  end

  def get_list_memberships
    Membership.all.select do |member| 
      member.lifter == self
      # binding.pry
    end
  end

    def get_list_gyms
      self.get_list_memberships.map {|member| member.gym}
    end
   
    def self.get_lift_average
      lift_sum = 0
      self.all.each do |lifter| 
        lift_sum += lifter.lift_total
      # binding.pry
      end
      return lift_sum.to_f / self.all.length
    end

    def total_cost
      @member_cost = 0
      self.get_list_memberships.sum {|member| member.cost}

    end

    def sign_up(cost,gym)
      add_membership(cost,gym)
    end
      

  
end

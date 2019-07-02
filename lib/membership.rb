class Membership
  attr_reader :cost
  attr_writer :MEMBERSHIPS

  MEMBERSHIPS = []
  def initialize(cost)
    @cost = cost
    MEMBERSHIPS << self 
  end

  def self.all 
    MEMBERSHIPS 
  end 





end

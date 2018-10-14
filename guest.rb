class Guest

attr_accessor :name, :wallet, :favourite

def initialize(name, wallet, favourite)
  @name = name
  @wallet = wallet
  @favourite = favourite
end

def pay_for_room(fee)
return @wallet -= fee
end


end

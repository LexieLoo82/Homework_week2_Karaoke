require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../room")


class GuestTest < MiniTest::Test

def setup
@guest1 = Guest.new("Stu", 50, "Gimme Shelter")
@guest2 = Guest.new("Ryan", 50, "Wheel's on the Bus")
@guest3 = Guest.new("Michelle", 150, "Wild Horses")
@guest4 = Guest.new("Libby", 40, "Wonderwall")
@guest5 = Guest.new("Robin", 70, "Hey Jude")
end

def test_has_name
  assert_equal("Michelle", @guest3.name)
end

def test_has_favourite
  assert_equal("Hey Jude", @guest5.favourite)
end

def test_has_money
  assert_equal(150, @guest3.wallet)
end



end

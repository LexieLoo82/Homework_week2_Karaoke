require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")



class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Gimme Shelter")
    @song2 = Song.new("Hey Jude")
    @song3 = Song.new("Wonderwall")
    @song4 = Song.new("Sally Cinnamon")
    @guest1 = Guest.new("Stu", 50, @song1)
    @guest2 = Guest.new("Ryan", 50, " ")
    @guest3 = Guest.new("Michelle", 150, @song3)
    @guest4 = Guest.new("Libby", 40, @song2)
    @guest5 = Guest.new("Robin", 70, "")
    @room1 = Room.new("Room 1", 10, [@guest1, @guest2, @guest3, @guest4], [@song1, @song4, @song3])
    @room2 = Room.new("Room 2", 5, [@guest5], [])
    @room3 = Room.new("Room 3", 20, [], [@song2, @song3])
    @room4 = Room.new("Room 4", 15, [], [])
  end


  def test_room_has_name
    assert_equal("Room 2", @room2.room_name)
  end

  def test_occupancy
    assert_equal(4, @room1.occupancy_count)
  end


  def test_check_out_guest
    @room1.guest_checks_out()
    assert_equal(3, @room1.occupancy_count())
  end

  def test_guest_pays_for_room
    fee = @room2.entry_fee
    @guest4.pay_for_room(fee)
    assert_equal(35, @guest4.wallet)
  end

  def test_guest_checks_in
    fee = @room2.entry_fee
    guest = @guest4
    @guest4.pay_for_room(fee)
    @room2.add_guest(guest)
    assert_equal(35, @guest4.wallet)
    assert_equal(2, @room2.occupancy_count)
  end

  def test_song_count
    assert_equal(2, @room3.song_count)
  end

  def test_add_song_to_room
    song = @song4
    @room3.add_song(song)
    assert_equal(3, @room3.song_count)
  end

def test_max_capacity
  assert_equal("No Entry", @room1.max_capacity)
end

# def test_favourite_song
#   assert_equal("Yay! favourite!", @room1.favourite_song(@guest1.favourite))
# end



end

require("minitest/autorun")
require("minitest/rg")
require_relative("../song")



class SongTest < MiniTest::Test

def setup
  @song1 = Song.new("Gimme Shelter")
  @song2 = Song.new("Hey Jude")
  @song3 = Song.new("Wonderwall")
  @song4 = Song.new("Sally Cinnamon")
end

def test_has_name
  assert_equal("Hey Jude", @song2.name)
end

end

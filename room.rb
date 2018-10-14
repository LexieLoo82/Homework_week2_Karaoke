class Room

  attr_accessor :room_name, :entry_fee, :songs

  def initialize(room_name, entry_fee, occupancy, songs)
    @room_name = room_name
    @entry_fee = entry_fee
    @occupancy = occupancy
    @songs = songs
  end



  def occupancy_count
    return @occupancy.count
  end

  def guest_checks_out()
    return @occupancy.pop
  end

  def add_guest(guest)
    @occupancy << (guest)
  end

  def song_count
    return @songs.count
  end

  def add_song(song)
    @songs << song
  end

  def max_capacity
    capacity = @occupancy.count
    if capacity += 4
      p "No Entry"
    else
      p "Room for more"
    end
  end

  # def favourite_song(favourite)
  #   if @songs.include?([:favourite])
  #     p "Yay! favourite!"
  #   else
  #     p "Boo! not good!"
  #   end
  # end



  end

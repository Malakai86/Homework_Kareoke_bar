class Guest

attr_reader :name, :wallet, :fav_song

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

def pay_fee(fee)
  return @wallet -= fee
end

def guest_has_name()
  return @guest.name
end

def guest_has_fav_song()
  return @guest.fav_song
end

def cheer()
  return "Whoo!! I love #{fav_song}!"
end
end

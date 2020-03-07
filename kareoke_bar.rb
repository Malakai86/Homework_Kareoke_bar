class Kareoke_bar

attr_reader :name

def initialize(name)
  @name = name

  @room1 = []
  @room2 = []
  @songs = []
  @max_num = 3
end

def room_count()
  return @room1.length()
end


def add_guest(guest)
  @room1.push(guest)
  return @room1.length()
end

def song_count()
  return @songs.length()
end

def add_song(song)
  @songs.push(song)
  return @songs.length
end

def remove_guest(guest)
  @room1.delete(guest)
  return @room1.length()
end

def too_many_guests(tony, clive, jane)
  @room2.add_guest(tony, clive, jane)
  if @room2.length() == @max_num
    @room2.delete(tony)
    return @room2.length()
end
end
end

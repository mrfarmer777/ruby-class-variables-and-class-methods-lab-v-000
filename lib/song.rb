
class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists=[]
  @@genres=[]

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres<<@genre
    @@artists<<@artist
  end

  def self.count
    @@count
  end

  def self.genres
    res=[]
    @@genres.each do |genre|
      if !res.include?(genre)
        res<<genre
      end
    end
    res
  end

  def self.artists
    res=[]
    @@artists.each do |artist|
      if !res.include?(artist)
        res<<genre
      end
    end
    res
end

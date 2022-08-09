class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  # ## in ActiveRecord, how do I send these things to an empty array?
  # @@artists_list = []
  # @@artists_list << self.artist.name

  ## this is the self.method syntax for these class methods
  # show us all the artists so far
  def self.artists
    Artist
  end

  # show us all the genres so far
  def self.genres
    Genre
  end
end

class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  def self.artists
    Artist
  end

  def self.genres
    Genre
  end

  ## in ActiveRecord, how do I send these things to an empty array?
  @@artists_list = []
  @@artists_list << self.artists.name
end

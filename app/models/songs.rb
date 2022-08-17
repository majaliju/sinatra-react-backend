class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  accepts_nested_attributes_for :genre, :artist, :reviews

  # stores an array of all the songs' names
  def self.names
    all.pluck(&:name)
  end

  # returns the song's genre
  def which_genre
    self.genre.name
  end

  # returns the song's artist
  def which_artist
    self.artist.name
  end
end

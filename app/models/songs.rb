class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  # stores an array of all the songs' names
  def self.names
    all.pluck(&:name)
  end

  ## redundant code according to standards
  # def self.artists
  #   Artist
  # end

  # def self.genres
  #   Genre
  # end

end

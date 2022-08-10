class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs
  has_many :reviews, through: :songs

  # stores an array of all the genre names
  def self.names
    all.pluck(&:name)
  end
end

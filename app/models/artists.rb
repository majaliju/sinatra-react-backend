class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
  has_many :reviews, through: :songs

  # stores an array of all the artists' names
  def self.names
    all.pluck(&:name)
  end
end

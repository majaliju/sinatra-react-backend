class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  accepts_nested_attributes_for :genre, :artist, :reviews

  # stores an array of all the songs' names
  def self.names
    all.pluck(&:name)
  end
end

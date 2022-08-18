class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  accepts_nested_attributes_for :genre, :artist, :reviews

  # stores an array of all the songs' names
  def self.names
    ## an array of only the names
    all.pluck(:name)

    # ## an array of an array of the values from each key
    # all.pluck(&:name)
  end

  # cleans up the titles of each song, capitalizes all
  def self.cleanup
    unique_array = self.names.uniq
    fixed_array = unique_array.each do |string|
      string.capitalize()
      puts string
    end
  end
end

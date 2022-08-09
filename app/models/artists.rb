class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
  has_many :reviews, through: :songs

  # show associated genres with this musical Artist
  def show_genres 
    self.genres
  end

end
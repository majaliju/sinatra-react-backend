class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs
  has_many :reviews, through: :songs

   # show associated genres with this musical Artist
   def show_artists 
    self.artists
  end

end
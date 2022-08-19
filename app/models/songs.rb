class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  accepts_nested_attributes_for :genre, :artist, :reviews
  before_save :title_fixer
  # after_destroy :cleanup
  ## enable this after testing it in the DELETE again

  def title_fixer
    ## add a case to capitalize after [&, -, /]
    self.name = self.name.split(/ |\_/).map(&:capitalize).join(" ")
  end

  ## cleanup any artists and genres that no longer exists if song is deleted
  def cleanup
    song = self

    ## check if only 1 occurrence exists of each artist and genre
    ## if so, artist.destroy and genre.destroy
    artist = Artist.find(song.artist_id)
    genre = Genre.find(song.genre_id)
  end
end

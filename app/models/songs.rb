class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  accepts_nested_attributes_for :genre, :artist, :reviews
  before_save :title_fixer
  after_destroy :cleanup

  def title_fixer
    ## add a case to capitalize after [&, -, /]
    self.name = self.name.split(/ |\_/).map(&:capitalize).join(" ")
  end

  ## cleanup any artists, genres that no longer exists if song is deleted
  ## delete all reviews associated with the song also
  def cleanup
    song = self
    match1 = Song.all.select { |each| song.artist.name === each.artist.name }
    if match1.empty?
      Artist.find(song.artist_id).destroy
    end
    match2 = Song.all.select { |each| song.genre.name === each.genre.name }
    if match2.empty?
      Genre.find(song.genre_id).destroy
    end
    identifier = song.id
    Review.where(:song_id => identifier).destroy_all
  end
end

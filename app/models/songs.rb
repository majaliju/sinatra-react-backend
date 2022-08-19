class Song < ActiveRecord::Base
  has_many :reviews
  belongs_to :artist
  belongs_to :genre

  accepts_nested_attributes_for :genre, :artist, :reviews
  before_save :title_fixer
  after_save :matching_artists

  ## corrects the title capitilzation
  ## always launched before a song saves
  def title_fixer
    ## add a case to capitalize after [&, -, /]
    self.name = self.name.split(/ |\_/).map(&:capitalize).join(" ")
  end

  def matching_artists
    puts "test"
  end
end

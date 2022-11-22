class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
  has_many :reviews, through: :songs
  validates :name, uniqueness: true

  accepts_nested_attributes_for :genres, :songs
  before_save :title_fixer

  private

  ## corrects the title capitilzation
  def title_fixer
    ## add a case to capitalize after [&, -, /]
    self.name = self.name.split(/ |\_/).map(&:capitalize).join(" ")
  end

  # gives us an int value tally of how many instances there are
  def self.how_many
    self.count
  end

end

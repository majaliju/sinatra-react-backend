class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
  has_many :reviews, through: :songs
  # validates :name, uniqueness: true

  accepts_nested_attributes_for :genres, :songs
  before_save :title_fixer

  ## corrects the title capitilzation
  def title_fixer
    ## add a case to capitalize after [&, -, /]
    self.name = self.name.split(/ |\_/).map(&:capitalize).join(" ")
  end

  def duplicate_checker
    ## find a match for the current entry
    ## if doesnt exist, then create and save
  end
end

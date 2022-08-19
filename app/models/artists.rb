class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
  has_many :reviews, through: :songs

  accepts_nested_attributes_for :genres, :songs
  before_save :title_fixer

  ## corrects the title capitilzation
  ## always launched before an artist saves

  def title_fixer
    ## add a case to capitalize after [&, -, /]
    self.name = self.name.split(/ |\_/).map(&:capitalize).join(" ")
  end

  # def duplicate_checker(name)
  #   self.name = self.find_or_create_by(name)
  #   ## check if the item already exists, if so
  # end
end

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs
  has_many :reviews, through: :songs

  accepts_nested_attributes_for :artists, :songs
  before_save :title_fixer,
              # :duplicate_checker

              ## corrects the title capitilzation
              ## always launched before a genre saves
              def title_fixer
                ## add a case to capitalize after [&, -, /]
                self.name = self.name.split(/ |\_/).map(&:capitalize).join(" ")
              end

  # def duplicate_checker
  # end
end

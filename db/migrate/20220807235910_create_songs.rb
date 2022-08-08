class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :genre_name
      t.int :year
      t.string :artist_name
      t.string :album_name
    end
  end
end

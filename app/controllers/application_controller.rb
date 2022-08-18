class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  ## get all the songs and display them all, alphabetical order
  get "/songs" do
    songs = Song.all.order(:name)
    songs.to_json
  end

  ## post a new song
  post "/songs" do
    artist = Artist.find_or_create_by(name: params[:artist][:name])
    genre = Genre.find_or_create_by(name: params[:genre][:name])
    artist.update(
      name: params[:artist][:name],
    )
    genre.update(
      name: params[:genre][:name],
    )
    song = Song.create(
      name: params[:name],
      year: params[:year],
      artist_id: artist.id,
      genre_id: genre.id,
    )
    song.to_json
  end

  # post "/songs" do
  #   # artist_id = Artist.find_by(name: params[:artistName]) || Artist.create(name: params[:artistName]),
  #   # genre_id = Genre.find_by(name: params[:genreName]) || Genre.create(name: params[:genreName]),
  #   # thisArtist = Artist.find_or_create_by(name: params[:artistName]),
  #   #              thisGenre = Genre.find_or_create_by(name: params[:genreName]),
  #   # this_artist = Artist.find_or_create_by(name: params[:artistName]),
  #   # binding.pry
  #   # this_genre = Genre.find_or_create_by(name: params[:genreName])
  #   # binding.pry
  #   song = Song.create(
  #     name: params[:name],
  #     year: params[:year],
  #     artist: [name: params[:artistName]],
  #     genre: [name: params[:genreName]],
  #   )
  #   song.to_json
  # end

  ## update the year of a song
  ## gotta also create the genre.name update here
  patch "/songs/:id" do
    song = Song.find(params[:id])
    song.update(
      year: params[:year],
    )
    song.to_json
  end

  #  ## update the genre name of a song
  #  #### GOTTA DEVELOP THIS ONE
  #  patch "/songs/:id" do
  #   song = Song.find(params[:id])
  #   genre = Genre.find(song)
  #   then update genre.name to that incoming value
  #   genre.update() or song.update()

  # end

  ## delete a song from the display
  delete "/songs/:id" do
    songs = Song.find(params[:id])
    songs.destroy
    songs.to_json
  end

  ## get all the artists in an array, alphabetical order
  get "/artists" do
    artist = Artist.all.order(:name)
    artist.to_json
  end

  ## get all the genres in an array, alphabetical order
  get "/genres" do
    genre = Genre.all.order(:name)
    genre.to_json
  end

  ## FOR REVIEWS

  ## get all the reviews and display them all
  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  ## post a new review -- initialized with 0 likes & 0 dislikes
  post "/reviews" do
    review = Review.create(
      likes: 0,
      dislikes: 0,
      comment: params[:comment],
      song_id: params[:song_id],
    )
    review.to_json
  end

  ## update the likes and/or dislikes count for the review
  patch "/reviews/:id" do
    review = Review.find(params[:id])
    review.update(
      likes: params[:likes],
      dislikes: params[:dislikes],
    )
    review.to_json
  end
end

# PROJECT CHECKLIST

# (1) CHECK
# Use Active Record to interact with a database.

# (2) CHECK
# Have at least two models with a one-to-many relationship.

# (3)
# full CRUD for the songs
# CR for the reviews (like/dislike button on them as well)

# At a minimum, set up the following API routes in Sinatra:
# create and read actions for both models
# full CRUD capability for one of the models

# (4) CHECK
# Build a separate React frontend application that interacts with the API to perform CRUD actions.

# (5)
# Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary.

class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  ## get all the songs and display them all
  get "/songs" do
    songs = Song.all
    songs.to_json
  end

  # ## POST method using artist_attributes
  # ## need better comprehension here though
  # ## post a new song
  # post "/songs" do
  #   song = Song.create(
  #     name: params[:songName],
  #     year: params[:year],
  #     artist_attribute: { name: params[:artistName] },
  #     genre_attribute: { name: params[:genreName] },
  #   )
  #   song.to_json
  # end

  post "/songs" do
    # artist_id = Artist.find_by(name: params[:artistName]) || Artist.create(name: params[:artistName]),
    # genre_id = Genre.find_by(name: params[:genreName]) || Genre.create(name: params[:genreName]),
    # thisArtist = Artist.find_or_create_by(name: params[:artistName]),
    #              thisGenre = Genre.find_or_create_by(name: params[:genreName]),
    artist = Artist.create(name: params[:artistName]),
    genre = Genre.create(name: params[:genreName])
    song = Song.create(
      name: params[:songName],
      year: params[:year],
      # thisArtist: params[:artistName],
      # thisGenre: params[:genreName],
      artist_id: artist.id,
      genre_id: genre.id,

    )

    song.to_json
  end

  ## update the year of a song
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

  ## get all the artists in an array
  get "/artists" do
    artist = Artist.all
    artist.to_json
  end

  ## get all the genres in an array
  get "/genres" do
    genre = Genre.all
    genre.to_json
  end

  ## FOR REVIEWS

  ## test the access for the reviews; attempting to fix PATCH request
  ## it works
  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json
  end

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

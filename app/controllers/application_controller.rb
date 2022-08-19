class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  ## get all the songs and display them all, alphabetical order
  get "/songs" do
    # songs = Song.all.order(:name)
    # songs.to_json

    # successfully adds the artist to each song
    songs = Song.all.order(:name)
    songs.to_json(include: :artist)
  end

  ## post a new song
  post "/songs" do
    artist = Artist.find_or_create_by(name: (params[:artist][:name]))
    # gotta add a cross-check here to remove any identical names
    genre = Genre.find_or_create_by(name: params[:genre][:name])
    # gotta add a cross-check here to remove any identical names
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

  ## update the year of a song
  ## gotta also create the genre.name update here
  patch "/songs/:id" do
    song = Song.find(params[:id])
    song.update(
      year: params[:year],
    )
    song.to_json
  end

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

  private

  def serialize(objects)
    objects.to_json(
      include: {
        artist: {
          include: [
            :name,
          ],
        },
      },
    )
  end
end

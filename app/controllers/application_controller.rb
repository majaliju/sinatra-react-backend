class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Default back-end page for now baby" }.to_json
  end


  ## FOR SONGS
  ## get all the songs and display them all
  get "/songs" do
    songs = Song.all
    songs.to_json
  end

  ## post a new song
  post "/songs" do
    song = Song.create(
      name: params[:name],
      year: params[:year],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    song.to_json
  end

  ## update the elements of a song
  patch '/songs/:id' do
    songs = Message.find(params[:id])
    songs.update(
      name: params[:name],
      year: params[:year]
    )
    songs.to_json
  end

  ## delete a song from the display
  delete '/songs/:id' do
    songs = Song.find(params[:id])
    songs.destroy
    songs.to_json
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
      comment: params[:comment]
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
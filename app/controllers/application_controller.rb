class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Default back-end page for now baby" }.to_json
  end

end


# PROJECT CHECKLIST 
# (1) 
# Use Active Record to interact with a database.
# (2)
# Have at least two models with a one-to-many relationship.
# (3)
# At a minimum, set up the following API routes in Sinatra:
# create and read actions for both models
# full CRUD capability for one of the models
# (4)
# Build a separate React frontend application that interacts with the API to perform CRUD actions.
# (5)
# Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary.
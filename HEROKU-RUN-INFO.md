## Given that development is currently config'd to run on Heroku 
## these commands below allow re-seeding

heroku pg:reset --confirm best-music-reviews-backend

heroku run rake db:migrate

heroku run rake db:seed
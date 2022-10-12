## Given that development is currently config'd to run on Heroku 
## these commands below allow re-seeding

heroku pg:reset

heroku run rake db:migrate

heroku run rake db:seed
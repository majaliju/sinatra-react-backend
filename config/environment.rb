# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV["RACK_ENV"] ||= "development"

# Require in Gems
require "bundler/setup"
Bundler.require(:default, ENV["RACK_ENV"])

# Require in all files in 'app' directory
require_all "app"


# ## FROM https://medium.com/@isphinxs/deploying-a-sinatra-app-to-heroku-7944b024f77c
# set :database_file, "./database.yml"

# ## this recommendation comes from this https://issuecloser.com/blog/deploying-sinatra-app-to-heroku
configure :production do
  db = URI.parse(ENV["DATABASE_URL"] || "postgres://localhost/mydb")

  ActiveRecord::Base.establish_connection(
    :adapter => db.scheme == "postgres" ? "postgresql" : db.scheme,
    :host => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => "utf8",
  )
end

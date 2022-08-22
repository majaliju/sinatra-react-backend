# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV["RACK_ENV"] ||= "development"

# Require in Gems
require "bundler/setup"
Bundler.require(:default, ENV["RACK_ENV"])

# ## FROM https://medium.com/@isphinxs/deploying-a-sinatra-app-to-heroku-7944b024f77c
# set :database_file, "./database.yml"

# Require in all files in 'app' directory
require_all "app"

## this recommendation comes from this
## http://lucaskisabeth.com/2017/06/24/deploying_your_sqlite3_sinatra_app_to_heroku_using_postgresql/

configure :development do
  ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/#{ENV["SINATRA_ENV"]}.sqlite",
  )
end

configure :production do
  # ## this was the original line per the doc above, I changed the ENV to "DATABASE_URL"
  # db = URI.parse(ENV["HEROKU_POSTGRESQL_COBALT_URL"] || "postgres://localhost/mydb")
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

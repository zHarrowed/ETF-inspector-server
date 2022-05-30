source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Sidekiq queue management and caching
gem "redis"

# Active job engine
gem "sidekiq"

# Runtime developer console
gem "pry"

# GraphQL for Rails
gem "graphql"

# Safer migrations
gem "strong_migrations"

# Cors setup
gem 'rack-cors'

group :development, :test do
  gem "rspec-rails"
end

group :development do
  # GraphQL web console for development
  gem "graphiql-rails"
end


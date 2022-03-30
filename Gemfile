source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.3"
gem 'pry'
gem 'simple_command'
gem "graphql", "1.8.13"
gem "graphql-pagination"
gem "hirb"
gem "jwt", "~> 2.1.0"
gem "kaminari-activerecord"
gem "omniauth-facebook"
gem "puma", "~> 4.3"
gem "rack-cors"
gem "rails", "~> 5.2.3"
gem "rouge"
gem "rubocop", require: false
gem "rubocop-performance"
gem "rubocop-rspec"
gem "sass-rails", "~> 5.0"
gem "search_object", "1.2.0"
gem "search_object_graphql", "0.1"
gem "sqlite3"

gem "uglifier", ">= 1.3.0"

gem "bootsnap", ">= 1.1.0", require: false
gem "coffee-rails", "~> 4.2"
gem "devise"
gem "jbuilder", "~> 2.5"
gem "turbolinks", "~> 5"

# group :production do
# 	gem 'pg'
# end 

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "graphiql-rails", "1.5.0", group: :development

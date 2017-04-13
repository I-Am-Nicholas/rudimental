# rudimental

* Technologies used
  Rails, Google Translate Plugin, PostgreSQL, Capybara, Rspec

* Ruby version
  2.4.0

* Rails version
  4.2.8

* System dependencies

* Configuration
  $gem install bundle
  $bundle install (to install gems and dependencies from the Gemfile)

* Database creation
  ????shall we include this: $rails new . -d postgresql -T
  -we use PostgreSQL
  $rake db:create
  -or you might need to run
  $rake db:create RAILS_ENV=test
  $rake db:create RAILS_ENV=development


* Database initialization
  $rake db:seed

* How to run the test suite
  $rspec

* Struggles
  -Once we deployed to Heroku, our local seeded database didn't upload, had to run $heroku run db:migrate db:seed

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

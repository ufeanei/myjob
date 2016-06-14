source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'


# Use sqlite3 as the database for Active Record
group :development do
  gem 'sqlite3'
end

#use delayedjob for background jobs
gem 'delayed_job_active_record'

#use delayed_job_web for a web interface to monit backgorund jobs
gem "delayed_job_web"

#daemons for background jobs in production
gem "daemons"

# Use SCSS for stylesheets
gem 'bootstrap-sass', '3.3.1'
gem 'sass-rails', '4.0.4'

#use font awesome lib for nice fonts
gem 'font-awesome-sass', '4.5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem "geocoder", '1.1.9'
#use geocoder to get coordinates of start and finish address. we need these in google maps

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
#use carrierwave for picture upload
gem 'carrierwave', '~> 0.11.2'



#user minimagick for picture processing
gem 'mini_magick', '~> 4.5'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
# use figaro to hide secret keys
gem 'figaro', '1.1.1'

# use will_paginate for pagination
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap', '~> 1.0.1'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]

ruby "2.0.0"


group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'puma'
end
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'
gem 'rails', '~> 6.1.0'
gem 'rails-i18n'

gem 'bootsnap', require: false
gem 'devise'
gem 'http_accept_language'
gem 'jbuilder'
gem 'jquery-rails'
gem 'puma'
gem 'sass-rails'
gem 'tailwindcss-rails', github: 'dorianmariefr/tailwindcss-rails', branch: 'minimal'
gem 'turbolinks'
gem 'will_paginate'

group :development, :test do
  gem 'byebug'
  gem 'sqlite3'

  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'listen'
  gem 'rack-mini-profiler'
  gem 'spring'
  gem 'web-console'

  gem 'rubocop', '~> 1.22', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'capybara'
  gem 'guard-rspec', require: false
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'selenium-webdriver'

  # only macOS
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
end

group :production do
  gem 'pg'
end

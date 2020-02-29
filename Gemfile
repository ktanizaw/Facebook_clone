source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
gem 'bcrypt', '3.1.11'
gem 'carrierwave'
gem 'mini_magick'
gem 'pry-rails'
gem 'better_errors'
gem 'binding_of_caller'
gem 'dotenv-rails' # 開発環境で環境変数を操作するのに必要
gem 'unicorn'
gem 'mini_racer', platforms: :ruby # デプロイ時に必要
gem 'ed25519'
gem 'bcrypt_pbkdf'
gem 'fog-aws'

group :production, :staging do
  gem 'unicorn'
end

group :development, :test do
  gem 'fog-aws'
  gem 'capistrano', '3.6.0' # capistranoのツール一式
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'capybara', '~> 2.13'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

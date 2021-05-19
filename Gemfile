source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'puma', '~> 4.3'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'pg'
gem 'graphql'
gem 'rack-cors'
gem 'bcrypt'
gem 'devise'
gem "devise-token_authenticatable"
gem 'omniauth'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

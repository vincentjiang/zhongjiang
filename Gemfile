source 'https://ruby.taobao.org'

ruby '2.1.5'
# 后端
gem 'rails', '4.2.0'
gem 'mysql2'
gem 'devise'
gem 'rolify'
gem 'cancancan', '~> 1.9'
gem 'bcrypt', '~> 3.1.7'

# 前端
gem 'bootstrap-sass', '~> 3.3.0'
gem 'sass-rails', '~> 5.0'
gem 'autoprefixer-rails'
gem 'bootstrap-datepicker-rails'
gem 'font-awesome-sass', '~> 4.2.0'
gem 'bootstrap_flash_messages'
gem "slim-rails"
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'

# API
gem 'jbuilder', '~> 2.0'

# 开发环境
group :development do
  gem "better_errors"
  gem 'capistrano-rails'
  gem 'guard', '~> 2.7.3'
  gem 'guard-rails'
  gem 'guard-coffeescript'
  gem 'guard-sass'
  gem 'guard-livereload'
  gem 'spring'
  gem 'puma'
end

# 测试环境
group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
end

# Use unicorn as the app server
gem 'unicorn'

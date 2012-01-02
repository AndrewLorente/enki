#vim: syn=ruby
source 'http://rubygems.org'

gem 'rails', '3.0.4'

platforms :jruby do
  gem 'trinidad'
  gem 'jruby-openssl'
end

gem 'pg'
gem 'thin'
gem 'RedCloth', '~> 4.2.7', :require => 'redcloth'
gem 'ruby-openid', :require => 'openid'
gem 'rack-openid', :require => 'rack/openid'
gem 'aaronh-chronic', :require => 'chronic' # Fixes for 1.9.2
gem 'coderay'
gem 'lesstile'
gem 'formtastic'
gem 'will_paginate', '= 3.0.pre2'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'cucumber-rails'
  gem 'webrat'
  gem 'factory_girl'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'nokogiri', '~> 1.5.0'
end

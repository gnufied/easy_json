require "rubygems"
require "bundler"
Bundler.setup(:default, :development)

require "easy_json"
require "active_record"

require_relative "models/user"
require_relative "models/post"
require_relative "models/asset"

require_relative "api_models/user"
require_relative "api_models/post"
require_relative "api_models/asset"

Dir["support/**/*.rb"].each {|f| require f }

Rspec.configure do |config|
  config.include LoadModel
end

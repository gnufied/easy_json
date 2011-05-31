require "rubygems"
require "bundler"
Bundler.setup(:default, :development)

require "easy_json"
require "active_record"
$:.unshift(File.dirname(__FILE__))

require "models/user"
require "models/post"
require "models/asset"

require "api_models/user"
require "api_models/post"
require "api_models/asset"

require "support/load_model"

RSpec.configure do |config|
  config.include LoadModel
end

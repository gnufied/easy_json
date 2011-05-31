$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require "active_support/concern"
require "active_support/core_ext/array/extract_options"
require "easy_json/iattr_accessor"
require "easy_json/json_data"
require "easy_json/json_properties"
require "easy_json/version"
require "easy_json/json"

module EasyJson; end


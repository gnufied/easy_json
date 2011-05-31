# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "easy_json/version"

Gem::Specification.new do |s|
  s.name        = "easy_json"
  s.version     = EasyJson::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nomads Inc"]
  s.email       = ["mail@gnufied.org"]
  s.homepage    = ""
  s.summary     = %q{An easy way to serialize json}
  s.description = %q{An easy way to serialize json}

  s.rubyforge_project = "easy_json"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "activesupport", "~> 3.0.7"
  s.add_development_dependency "rspec"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "activerecord", "~> 3.0.7"
end

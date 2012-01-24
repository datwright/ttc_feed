# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ttc_feed/version"

Gem::Specification.new do |s|
  s.name        = "ttc_feed"
  s.version     = TtcFeed::VERSION
  s.authors     = ["David Wright"]
  s.email       = ["davidwright@gmail.com"]
  s.homepage    = ""
  s.summary     = "Simplified ruby interface for Open TTC Feed"
  s.description = "Access some simple metrics provided by the TTC via their open data feed"

  s.rubyforge_project = "ttc_feed"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"

  s.add_runtime_dependency "faraday"
  s.add_runtime_dependency "nokogiri"

end

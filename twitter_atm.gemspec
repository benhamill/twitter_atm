# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "twitter_atm/version"

Gem::Specification.new do |s|
  s.name        = "twitter_atm"
  s.version     = TwitterAtm::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ben Hamill"]
  s.email       = ["ben at benhamill dot com"]
  s.homepage    = ""
  s.summary     = %q{Use the command line to navigate Twitter's PIN-based OAuth flow.}
  s.description = %q{A simple command line tool for navigating Twitter's Pin-based OAuth path and outputting the credentials received to stdout.}

  s.rubyforge_project = "twitter_atm"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "knife-hp/version"

Gem::Specification.new do |s|
  s.name        = "knife-hp"
  s.version     = Knife::Hp::VERSION
  s.platform    = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.md", "LICENSE" ]
  s.authors     = ["Matt Ray"]
  s.email       = ["matt@opscode.com"]
  s.homepage    = "https://github.com/opscode/knife-hp"
  s.summary     = %q{HP Cloud Compute support for Chef's Knife command}
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "hpfog", "~> 0.0.14"
end

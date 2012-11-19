# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fech/version"

Gem::Specification.new do |s|
  s.name        = "fech"
  s.version     = Fech::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael Strickland", "Evan Carmi", "Aaron Bycoffe", "Derek Willis"]
  s.email       = ["dwillis@gmail.com"]
  s.homepage    = "http://github.com/nytimes/fech"
  s.summary     = %q{Ruby library for parsing FEC filings.}
  s.description = %q{A Ruby library for interacting with electronic filings from the Federal Election Commission.}

  s.rubyforge_project = "fech"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "fastercsv"
  s.add_dependency "people"
  if RUBY_VERSION < "1.9"
    s.add_development_dependency "linecache", "0.43"
    s.add_development_dependency "ruby-debug"
    s.add_development_dependency "iconv"
  end
  if RUBY_VERSION >= "1.9"
    s.add_development_dependency "ruby-debug19"
    s.add_development_dependency "linecache19"
  end 
  s.add_development_dependency "rake", "0.8.7"
  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "mocha"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rcov"
  s.add_development_dependency "rdoc"
  s.add_development_dependency "yard"
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lorempixum/version"

Gem::Specification.new do |s|
  s.name        = "lorempixum"
  s.version     = Lorempixum::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Daniel Spangenberg"]
  s.email       = ["daniel.spangenberg@parcydo.com"]
  s.homepage    = "http://neonlex.github.com"
  s.summary     = %q{With these gem you can easily have nice placeholder images in your app.}
  s.description = %q{This gem generates image urls for placeholder images.}

  s.rubyforge_project = "lorempixum"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

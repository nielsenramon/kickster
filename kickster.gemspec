$:.push File.expand_path("../lib", __FILE__)
require 'kickster/version'

Gem::Specification.new do |spec|
  spec.name          = "kickster"
  spec.version       = Kickster::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = "Nielsen Ramon"
  spec.summary       = "Hassle-free deploying to GitHub Pages with Jekyll."
  spec.description   = "Jekyll starter template with GitHub Pages deploy to kickstart your project."
  spec.email         = "nielsenramon1@gmail.com"
  spec.homepage      = "http://nielsenramon.be/kickster"
  spec.licenses      = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency("thor")
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end

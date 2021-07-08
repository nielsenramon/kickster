$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "kickster/version"

Gem::Specification.new do |spec|
  spec.name          = "kickster"
  spec.version       = Kickster::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.author        = "Nielsen Ramon"
  spec.summary       = "Worry-free deploying to GitHub Pages using Jekyll."
  spec.description   = "Kickster provides a basic Jekyll project setup packed with web best practises and useful optimization tools increasing your overall project quality. Kickster ships with automated and worry-free deployment scripts for GitHub Pages."
  spec.email         = "nielsenramon1@gmail.com"
  spec.homepage      = "http://kickster.nielsenramon.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency("thor", "~> 0")
  spec.add_development_dependency "bundler", "~> 2.2", ">= 2.2.10"
  spec.add_development_dependency "rake", "~> 12.3", ">= 12.3.3"
end

Gem::Specification.new do |spec|
  spec.name          = "kickster"
  spec.version       = "0.1.3"
  spec.platform      = Gem::Platform::RUBY
  spec.author        = "Nielsen Ramon"
  spec.summary       = "Hassle-free deploying to GitHub Pages with Jekyll."
  spec.description   = "Jekyll starter template with GitHub Pages deploy to kickstart your project."
  spec.email         = "nielsenramon1@gmail.com"
  spec.homepage      = "http://kickster.nielsenramon.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency("thor")
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end

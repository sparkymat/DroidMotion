# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'DroidMotion/version'

Gem::Specification.new do |spec|
  spec.name          = "DroidMotion"
  spec.version       = DroidMotion::VERSION
  spec.authors       = ["Ajith Hussain"]
  spec.email         = ["ajith.hussain@gmail.com"]

  spec.summary       = %q{DroidMotion provides a DSL for Android layouts, as well as other utilities}
  spec.homepage      = "https://github.com/sparkymat/DroidMotion"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

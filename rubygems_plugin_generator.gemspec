# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubygems_plugin_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "rubygems_plugin_generator"
  spec.version       = RubygemsPluginGenerator::VERSION
  spec.authors       = ["Brian Thomas Storti"]
  spec.email         = ["btstorti@gmail.com"]

  spec.summary       = %q{Generates skeleton for a rubygems plugin}
  spec.description   = %q{Generates skeleton for a rubygems plugin when you run 'gem plugin <plugin-name>'}
  spec.homepage      = "http://brianstorti.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'thor', '~> 0'

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pebbles/lovelive/version'

Gem::Specification.new do |spec|
  spec.name          = "pebbles-lovelive"
  spec.version       = Pebbles::LoveLive::VERSION
  spec.authors       = ["Kenji Abe"]
  spec.email         = ["kenji.01.star@gmail.com"]
  spec.summary       = %q{ Show the profile of LoveLive μ's members and story of TV }
  spec.description   = %q{ Show the profile of LoveLive μ's members and story of TV }
  spec.homepage      = "https://github.com/STAR-ZERO/pebbles-lovelive"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'thor'

  spec.add_development_dependency "bundler", '~> 1.6.2'
  spec.add_development_dependency "rake", '~> 10.3.2'
  spec.add_development_dependency "rspec", '~> 3.0.0'
  spec.add_development_dependency "simplecov", '~> 0.9.0'
  spec.add_development_dependency "coveralls", '~> 0.7.0'
end

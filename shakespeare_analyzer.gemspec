# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shakespeare_analyzer/version'

Gem::Specification.new do |spec|
  spec.name          = "shakespeare_analyzer"
  spec.version       = ShakespeareAnalyzer::VERSION
  spec.authors       = ["Tom Dunlap"]
  spec.email         = ["apocryphalauthor@gmail.com"]
  spec.summary       = %q{Assignment for ThoughtBot TDD.}
  # spec.description   = %q{Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "GPL v2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry-byebug"

  spec.add_runtime_dependency "nokogiri"
end

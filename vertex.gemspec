# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vertex/version'

Gem::Specification.new do |spec|
  spec.name          = "vertex"
  spec.version       = Vertex::VERSION
  spec.authors       = ["Steven Rutkowski"]
  spec.email         = ["steven.rutkowski@gmail.com"]
  spec.summary       = %q{Takes as input the name of a CSV key and a list of CSV files sharing this key. Outputs a CSV file merging all files along the provided key.}
  spec.description   = %q{Merges CSV files on a particular key and sends the output to stdout}
  spec.homepage      = "http://sr-ix.net"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["vertex"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "trollop", "~> 2"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

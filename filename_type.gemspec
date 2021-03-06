# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'filename_type/version'

Gem::Specification.new do |spec|
  spec.name          = "filename_type"
  spec.version       = FilenameType::VERSION
  spec.authors       = ["Nicolas De Jay"]
  spec.email         = ["ndj+rubygems@pinkfilter.org"]

  spec.summary       = %q{Simple filename manipulation in Ruby.}
  spec.homepage      = "https://github.com/ndejay/filename_type"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

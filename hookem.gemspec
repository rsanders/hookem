# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hookem/version'

Gem::Specification.new do |gem|
  gem.name          = "hookem"
  gem.version       = Hookem::VERSION
  gem.authors       = ["Robert Sanders"]
  gem.email         = ["robert@zeevex.com"]
  gem.description   = %q{An implementation of named callback hooks for objects}
  gem.summary       = %q{Sort of like observable, only without the 'changed' semantics and supporting multiple named hooks}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec', '~> 2.9.0'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'pry'

end

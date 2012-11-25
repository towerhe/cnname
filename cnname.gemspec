# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cnname/version'

Gem::Specification.new do |gem|
  gem.name          = "cnname"
  gem.version       = Cnname::VERSION
  gem.authors       = ["Tower He"]
  gem.email         = ["towerhe@gmail.com"]
  gem.description   = %q{cnname provides support to handle the names of Chinese}
  gem.summary       = %q{cnname provides support to handle the names of Chinese}
  gem.homepage      = "https://github.com/towerhe/cnname"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'oj'

  gem.add_development_dependency 'rspec'
end

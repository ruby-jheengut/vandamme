# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vandamme/version'

Gem::Specification.new do |gem|
  gem.name          = "vandamme"
  gem.version       = Vandamme::VERSION
  gem.authors       = ["Philippe Lafoucrière"]
  gem.email         = ["philippe.lafoucriere@tech-angels.com"]
  gem.description   = %q{Vandamme is aware of files content, and will be mostly used to parse changelog files and extract relevant content.}
  gem.summary       = %q{Be aware of changelogs content}
  gem.homepage      = "http://tech-angels.github.com/vandamme/"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec','~> 3.7.0'
  gem.add_development_dependency 'rake','~> 12.3.0'

  gem.add_dependency 'github-markup', '~> 2.0.0'
  gem.add_dependency 'commonmarker', '~> 0.17.9'
end

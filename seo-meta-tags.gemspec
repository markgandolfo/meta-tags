# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'seo/version'

Gem::Specification.new do |spec|
  spec.name          = 'seo-meta-tags'
  spec.version       = Seo::VERSION
  spec.authors       = ['Mark Gandolfo']
  spec.email         = ['mark@gandolfo.com.au']
  spec.summary       = %q{Meta Tags builder}
  spec.description   = %q{A meta tag builder}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'actionpack', '>= 4.0.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roman_numbers/version'

Gem::Specification.new do |spec|
  spec.name          = 'roman_numbers'
  spec.version       = RomanNumbers::VERSION
  spec.authors       = %w(alexeyl)
  spec.email         = %w(zozz2008@gmail.com)
  spec.description   = %q{Fixnum to roman numbers converter}
  spec.summary       = %q{Fixnum to roman numbers converter}
  spec.homepage      = ''
  spec.license       = ''

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end

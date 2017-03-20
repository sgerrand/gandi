# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gandi/version'

Gem::Specification.new do |spec|
  spec.name              = 'gandi'
  spec.version           = Gandi::VERSION
  spec.date              = Time.now.strftime('%Y-%m-%d')
  spec.summary           = 'Gandi XML RPC API v3'
  spec.author            = 'Olivier Ruffin'
  spec.description       = 'Wrapper around gandi xml-rpc API v3'
  spec.homepage          = 'https://github.com/veilleperso/gandi'
  spec.has_rdoc          = false
  spec.license           = 'MIT'
  spec.files             = `git ls-files -z`.split("\x0").reject do |f|
    f.match(/^(test|spec|features)\//)
  end
  spec.require_paths = ['lib']
  spec.metadata['yard.run'] = 'yri'
  spec.add_dependency 'hashie'
  spec.add_dependency 'xmlrpc'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'yard', '~> 0.9'
  spec.add_development_dependency 'simplecov', '~> 0.14'
end

# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bravo/version'

Gem::Specification.new do |gem|
  gem.name          = "bravo"
  gem.version       = Bravo::VERSION
  gem.authors       = ["Leandro Marcucci"]
  gem.email         = ["leanucci@gmail.com"]
  gem.description   = 'Adaptador para el Web Service de Facturacion Electrónica de AFIP'
  gem.summary       = 'Adaptador WSFE'
  gem.homepage      = "https://github.com/leanucci/bravo#readme"
  gem.date          = '2011-03-14'

  gem.files         = `git ls-files`.split($RS)
  gem.files.reject! { |f| f.include? 'vcr' }
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w[lib bin]

  gem.add_runtime_dependency(%{savon}, ["~> 2.9.0"])
  gem.add_runtime_dependency(%{thor}, ["~> 0.19.0"])

  gem.add_development_dependency(%{rspec}, ["~> 3.2.0"])
  gem.add_development_dependency(%{rake}, ["~> 10.4.0"])
  gem.add_development_dependency(%{vcr}, ["~> 2.9.0"])
  gem.add_development_dependency(%{simplecov}, ["~> 0.9.0"])
  gem.add_development_dependency(%{rubocop}, ["~> 0.29.0"])
  gem.add_development_dependency(%{webmock}, ["~> 1.18.0"])
end

# frozen_string_literal: true

require_relative 'lib/ofx-parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'ofx-parser'
  spec.version       = OfxParser::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.author        = 'AppFolio'
  spec.email         = 'dev@appfolio.com'
  spec.description   = 'Library to parse a realistic subset of the lengthy OFX 1.x specification.'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/appfolio/ofx-parser'
  spec.license       = 'Nonstandard'
  spec.files         = Dir['**/*'].select { |f| f[%r{^(lib/|app/|config/|Gemfile$|Rakefile|README.md|.*gemspec)}] }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/appfolio'

  spec.add_dependency('hpricot', ['>= 0.6', '< 1'])
end

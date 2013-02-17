# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teamcity/version'

Gem::Specification.new do |gem|
  gem.name          = "teamcity-ruby-client"
  gem.version       = TeamCity::VERSION
  gem.authors       = ['Jason Perry"']
  gem.email         = ['bosoxjay@gmail.com']
  gem.description   = %q{A Ruby wrapper for the TeamCity Rest API}
  gem.summary       = %q{Ruby wrapper for the TeamCity API}
  gem.homepage      = 'https://github.com/jperry/teamcity-ruby-client'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  # Dependencies
  gem.add_development_dependency('rspec', '~> 2.12')
  gem.add_development_dependency('webmock', '~> 1.9.0')
  gem.add_development_dependency('rake', '~> 10.0.3')
end

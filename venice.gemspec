$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'venice/version'

Gem::Specification.new do |s|
  s.name        = 'venice'
  s.authors     = ['Mattt Thompson']
  s.email       = 'm@mattt.me'
  s.license     = 'MIT'
  s.homepage    = 'http://nomad-cli.com'
  s.version     = Venice::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'iTunes In-App Purchase Receipt Verification'
  s.description = 'Ruby Gem for In-App Purchase Receipt Verification'

  s.add_dependency 'commander', '~> 4.1'
  s.add_dependency 'json'
  s.add_dependency 'terminal-table', '>= 2', '< 4'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.6'
  s.add_development_dependency 'rspec-its', '~> 1.2'
  s.add_development_dependency 'simplecov'

  s.files         = Dir['./**/*'].reject { |file| file =~ /\.\/(bin|log|pkg|script|spec|test|vendor)/ }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end

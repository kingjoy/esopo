# frozen_string_literal: true

# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__), 'lib', 'esopo', 'version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'esopo'
  s.version = Esopo::VERSION
  s.author = 'Danil Che'
  s.email = '-'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split('')
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc', 'esopo.rdoc']
  s.rdoc_options << '--title' << 'esopo' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'esopo'
  s.add_development_dependency('rspec', '>= 3.10')
  s.add_development_dependency('rake', '>= 9.9.2')
  s.add_development_dependency('rdoc', '>= 4.3')
  s.add_runtime_dependency('gli', '>= 1.21.0')
end

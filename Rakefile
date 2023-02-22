# frozen_string_literal: true

require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
Rake::RDocTask.new do |rd|
  rd.main = 'README.rdoc'
  rd.rdoc_files.include('README.rdoc', 'lib/**/*.rb', 'bin/**/*')
  rd.title = 'Interpolation data and output into terminal'
end

spec = eval(File.read('esopo.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end
require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << 'rspec'
  t.test_files = FileList['spec/*_spec.rb']
end

task default: :test

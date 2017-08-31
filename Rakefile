# encoding: UTF-8

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rdoc/task'

desc 'Default: run tests.'
task default: :test

desc 'Run Devise unit tests.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
  t.warning = false
end

desc 'Generate documentation for Gaskiya.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Gaskiya'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the activemerchant_testing plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the activemerchant_testing plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ActivemerchantTesting'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


def gemspec
  @gemspec ||= begin
    file = File.expand_path("../active_merchant_testing.gemspec", __FILE__)
    eval(File.read(file), binding, file)
  end
end

begin
  require 'rake/gempackagetask'
  Rake::GemPackageTask.new(gemspec) do |pkg|
    pkg.gem_spec = gemspec
  end
  task :gem => :gemspec
rescue LoadError
  task(:gem){abort "`gem install rake` to package gems"}
end

desc "Install the gem locally"
task :install => :gem do
  sh "gem install pkg/#{gemspec.full_name}.gem"
end

desc "Validate the gemspec"
task :gemspec do
  gemspec.validate
end
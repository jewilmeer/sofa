require 'jeweler'
require './lib/sofa/version'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "sofa"
  gem.version = Sofa::Version::STRING
  gem.summary = %Q{A Ruby library for the TVRage API.}
  gem.description = %Q{A simple Ruby library for the TVRage API.}
  gem.email = "henry@qlane.com"
  gem.homepage = "http://github.com/hsume2/sofa"
  gem.authors = ["Henry Hsu", "Jan-Willem van der Meer"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'

desc 'Default: run specs.'
task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
  # Put spec opts in a file named .rspec in root
end

desc "Generate code coverage"
RSpec::Core::RakeTask.new(:coverage) do |t|
  t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
  t.rcov = true
  t.rcov_opts = ['--exclude', 'spec']
end

begin
  require 'reek/adapters/rake_task'
  Reek::RakeTask.new do |t|
    t.fail_on_error = true
    t.verbose = false
    t.source_files = 'lib/**/*.rb'
  end
rescue LoadError
  task :reek do
    abort "Reek is not available. In order to run reek, you must: sudo gem install reek"
  end
end

begin
  require 'roodi'
  require 'roodi_task'
  RoodiTask.new do |t|
    t.verbose = false
  end
rescue LoadError
  task :roodi do
    abort "Roodi is not available. In order to run roodi, you must: sudo gem install roodi"
  end
end

task :default => :spec

# begin
#   require 'yard'
#   YARD::Rake::YardocTask.new
# rescue LoadError
#   task :yardoc do
#     abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
#   end
# end

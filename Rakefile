require 'rake/testtask'

desc 'Default: rake test.'
task :default => :test

desc 'run unit tests.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
end

desc 'run server.'
task :server do
  system 'bundle exec shotgun config.ru'
  # system 'sass --watch -q stylesheets:public/stylesheets&'
end

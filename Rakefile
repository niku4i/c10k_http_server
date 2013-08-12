# encoding: utf-8

Bundler.setup
Bundler.require

desc "Open the console"
task :console do
  # NewRelic.agent_instance.shutdown rescue nil
  require 'irb'
  require 'irb/completion'
  ARGV.clear
  IRB.start
end

task :c => :console


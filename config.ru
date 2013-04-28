require "rubygems"
require "bundler/setup"
Bundler.require

require File.expand_path("./tablr.rb", File.dirname(__FILE__))

run Sinatra::Application

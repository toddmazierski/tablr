# http://chrislaco.com/blog/rails3-dreamhost-and-you/
ENV["GEM_HOME"]="#{ENV["HOME"]}/.gems/ruby/1.8"
ENV["GEM_PATH"]="#{ENV["GEM_HOME"]}:/usr/lib/ruby/gems/1.8"
require "rubygems"
Gem.clear_paths

require File.expand_path("./tablr.rb", File.dirname(__FILE__))
run Sinatra::Application

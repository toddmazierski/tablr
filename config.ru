# http://recipes.sinatrarb.com/p/deployment/dreamhost_via_passenger
require "#{ENV["HOME"]}/.gems/ruby/1.8/gems/rack-1.4.1/lib/rack.rb"
require "#{ENV["HOME"]}/.gems/ruby/1.8/gems/sinatra-1.3.2/lib/sinatra.rb"

require File.expand_path("./tablr.rb", File.dirname(__FILE__))
run Sinatra::Application

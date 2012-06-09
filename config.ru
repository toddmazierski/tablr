# A DreamHost-specific hack. Source:
# http://nathanhoad.net/no-such-file-to-load-sinatra-on-dreamhost
ENV['GEM_HOME'] ||= `gem env path`.strip.split(':').first
ENV['GEM_PATH'] ||= `gem env path`.strip
Gem.clear_paths

require File.expand_path("./tablr.rb", File.dirname(__FILE__))
run Sinatra::Application

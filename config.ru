# A DreamHost-specific hack to work around shared hosting limitations.
ENV["GEM_HOME"] = File.expand_path("../../shared/bundle/ruby/1.8", File.dirname(__FILE__))
ENV["GEM_PATH"] = File.expand_path("../../shared/bundle/ruby/1.8", File.dirname(__FILE__))
Gem.clear_paths

require File.expand_path("./tablr.rb", File.dirname(__FILE__))
run Sinatra::Application

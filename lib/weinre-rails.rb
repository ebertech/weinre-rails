module Weinre
  module Rails    
    include ActiveSupport::Configurable
    
    config_accessor :url    
    self.url = "http://localhost:8080/target/target-script-min.js#anonymous"

    autoload :Engine, "weinre/rails/engine"

    autoload :VERSION, "weinre/rails/version"
  end
end

require "weinre/rails/engine" if defined?(Rails)
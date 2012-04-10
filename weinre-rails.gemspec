# -*- encoding: utf-8 -*-
require File.expand_path('../lib/weinre-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Eberbach"]
  gem.email         = ["andrew@ebertech.ca"]
  gem.description   = %q{A Rails 3 helper for Weinre}
  gem.summary       = %q{Provides asset-pipeline javascript for connecting to weinre}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "weinre-rails"
  gem.require_paths = ["lib"]
  gem.version       = Weinre::Rails::VERSION
end

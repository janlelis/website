# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/website/version"

Gem::Specification.new do |gem|
  gem.name          = "website"
  gem.version       = Website::VERSION
  gem.summary       = "Open the github repo for the current project in your default browser."
  gem.description   = "Open the github repo for the current project in your default browser. Usage: In a folder with a git repo, run: $ website"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["mail@janlelis.de"]
  gem.homepage      = "https://github.com/janlelis/website"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"
  gem.add_dependency "launchy", "~> 2.4"
end

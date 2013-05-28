# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'route_by/version'

Gem::Specification.new do |spec|
  spec.name          = "route_by"
  spec.version       = RouteBy::VERSION
  spec.authors       = ["Peter Waldschmidt", "Taylor Shuler"]
  spec.email         = ["peterw@gnoso.com", "taylorshuler@aol.com"]
  spec.description   = %q{Route_By allows you to use a field other than ID for identifying object identities in your routes.}
  spec.summary       = %q{A Rails plugin that enables RESTful resources to be routed by a field other than a record ID.}
  spec.homepage      = "https://github.com/gnoso/route_by"
  spec.license       = "Apache License 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "activerecord"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

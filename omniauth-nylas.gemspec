# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/nylas/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-nylas"
  spec.version       = Omniauth::Nylas::VERSION
  spec.authors       = ["Kyle Bock"]
  spec.email         = ["kyle.bock@salesloft.com"]

  spec.summary       = %q{OmniAuth strategy for Nylas.}
  spec.description   = %q{OmniAuth strategy for Nylas.}
  spec.homepage      = "https://github.com/kwbock/omniauth-nylas.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth", "~>2.1"
  spec.add_dependency "omniauth-oauth2", "~>1.8"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
end

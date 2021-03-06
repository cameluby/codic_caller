# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'codic_caller/version'

Gem::Specification.new do |spec|
  spec.name          = "codic_caller"
  spec.version       = CodicCaller::VERSION
  spec.authors       = ["HaiTo"]
  spec.email         = ["holloword@me.com"]

  spec.summary       = %q{codic caller in terminal}
  spec.description   = %q{codic caller in terminal}
  spec.homepage      = "https://github.com/HaiTo/codic_caller"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'pry-byebug'
  spec.add_runtime_dependency 'thor'
  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'faraday_middleware'
end

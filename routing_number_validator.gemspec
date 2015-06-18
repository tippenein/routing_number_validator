# coding: utf-8
Gem::Specification.new do |s|
  s.name          = "routing_number_validator"
  s.version       = RoutingNumberValidator::VERSION
  s.authors       = ["brady.ouren"]
  s.email         = ["brady.ouren@gmail.com"]

  s.summary       = "bank routing number validation"
  s.description   = "bank routing number validation"
  s.homepage      = %q{https://github.com/tippenein/routing_number_validator}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.9"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency("rspec", ">= 0")
  s.add_dependency("activemerchant", ">= 0")
  s.add_dependency("activemodel", ">= 0")

end

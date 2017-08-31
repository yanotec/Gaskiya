# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gaskiya/version'

Gem::Specification.new do |spec|
  spec.name                  = "gaskiya"
  spec.version               = Gaskiya::VERSION.dup
  spec.authors               = ["Jonathan C. Calixto"]
  spec.email                 = ["jonathanccalixto@gmail.com"]

  spec.summary               = "A simple but complete authentication gem."
  spec.description           = "A simple but complete authentication gem."
  spec.homepage              = "https://github.com/yanotec/gaskiya"
  spec.licenses              = ["MIT"]
  spec.platform              = Gem::Platform::RUBY

  spec.files                 = `git ls-files -z`.split("\x0").reject do |f|
                                 f.match(%r{^(test|spec|features)/})
                               end
  spec.test_files            = `git ls-files -- test/*`.split("\x0")
  spec.require_paths         = ["lib"]
  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency "activesupport", ">= 3.0.0", "< 5.2.0"
  spec.add_dependency "rake", ">= 0.8.7"
  spec.add_dependency "thor", ">= 0.18.1", "< 2.0"
  spec.add_dependency "method_source"
end

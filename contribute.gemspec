# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'contribute/version'

Gem::Specification.new do |spec|
  spec.name          = 'contribute'
  spec.version       = Contribute::VERSION
  spec.authors       = ['Aditya Prakash']
  spec.email         = ['aditya.prakash132@gmail.com']

  spec.summary       = 'Contribute finds active repositories on github'
  spec.description   = 'It uses github api to find most active'\
                        'repositories for people to contribute.'
  spec.homepage      = 'https://github.com/NIT-dgp/contribute'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features)/})
  }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'octokit', '~> 4.0'
  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

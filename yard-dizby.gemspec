# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

require './lib/yard-dizby/version'

Gem::Specification.new do |spec|
  spec.name          = 'yard-dizby'
  spec.version       = YARD::Dizby::VERSION
  spec.authors       = ['Nathan Currier']
  spec.email         = ['nathan.currier@gmail.com']
  spec.license       = 'BSD-3-clause'

  spec.description   = 'YARD plugin for Dizby'
  spec.summary       = 'YARD plugin to ease documenting Dizby'
  spec.homepage      = 'https://github.com/rideliner/yard-dizby'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'yard', '> 0.7'
  spec.add_dependency 'bundler', '>= 1.11.2'
end

# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

require './lib/yard_dizby/version'

Gem::Specification.new do |spec|
  spec.name          = 'yard_dizby'
  spec.version       = YARD::Dizby::VERSION
  spec.authors       = ['Nathan Currier']
  spec.email         = ['nathan.currier@gmail.com']
  spec.license       = 'MPL-2.0'

  spec.description   = 'YARD plugin for Dizby'
  spec.summary       = 'YARD plugin to ease documenting Dizby'
  spec.homepage      = 'https://github.com/rideliner/yard_dizby'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'yard_rideliner'
end

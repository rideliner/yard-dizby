# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

require 'yard'
require 'yard/rake/yardoc_task'

module YARD
  module Dizby
    def self.template_path
      File.expand_path('../../template', File.dirname(__FILE__))
    end
  end
end

module DizbyYardocTaskExtension
  def initialize(name = :yard)
    super(name) do |task|
      task.options += ['--template-path', YARD::Dizby.template_path]
      yield task if block_given?
    end
  end
end

YARD::Rake::YardocTask.__send__(:prepend, DizbyYardocTaskExtension)

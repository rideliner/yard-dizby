# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

require 'yard'

module YARD
  module Dizby
    def self.template_path
      File.expand_path('../../template', File.dirname(__FILE__))
    end
  end
end

YARD::Templates::Engine.register_template_path(YARD::Dizby.template_path)

require 'simplecov'
require 'coveralls'
Coveralls.wear!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'pebbles/lovelive'

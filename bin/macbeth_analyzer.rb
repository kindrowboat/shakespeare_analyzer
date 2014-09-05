#!/usr/bin/env ruby

require 'pathname'
lib = Pathname.new(__FILE__).dirname.join('..', 'lib').expand_path
$LOAD_PATH.unshift lib.to_s

require "shakespeare_analyzer"

puts ShakespeareAnalyzer.analyze_macbeth

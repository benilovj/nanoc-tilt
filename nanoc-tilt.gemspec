# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nanoc-tilt/version"

Gem::Specification.new do |s|
  s.name        = "nanoc-tilt"
  s.version     = Nanoc::Tilt::VERSION
  s.authors     = ["Jake Benilov"]
  s.email       = ["benilov@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A filter for the nanoc (https://github.com/ddfreyne/nanoc), a static page generator, that lets you render your files with tilt (https://github.com/rtomayko/tilt)}
  s.description = %q{This gem delivers a nanoc filter that allows the user to use tilt (https://github.com/rtomayko/tilt). Tilt is a wrapper around several Ruby template engines, which picks the correct one based on the source filename. }

  s.rubyforge_project = "nanoc-tilt"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

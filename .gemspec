# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'plist'

# Create compressed packages
spec = Gem::Specification.new do |s|
  s.name    = 'plist'
  s.version = Plist::VERSION

  s.summary     = "All-purpose Property List manipulation library."
  s.description = <<-EOD
Plist is a library to manipulate Property List files, also known as plists.  It can parse plist files into native Ruby data structures as well as generating new plist files from y
EOD

  s.authors  = "Ben Bleything and Patrick May"
  s.homepage = "http://plist.rubyforge.org"

  s.rubyforge_project = 'plist'

  s.has_rdoc = true

  s.files = Dir.glob( 'lib/**/*' ) + Dir.glob( 'test/test_*' ) + [ 'Rakefile', 'README.rdoc', 'CHANGELOG', 'LICENSE' ]

  s.autorequire = 'plist'
end


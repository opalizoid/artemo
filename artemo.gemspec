require File.expand_path("../lib/artemo/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'artemo'
  s.version     = ArtEmo::VERSION
  s.licenses    = ['GPL-3.0']
  s.summary     = "Analyze emotions in texts"
  s.description = <<-DESCRIPTION
  Don't look for emotions, where are not emotions. 
  Simple program to analyze emotions in texts by keywords database. 
  Use by: artemo [your text file], to plot data to pdf use artemo --plot [your text file]
  For multiple files use: for i in *;do artemo --plot "$i";done
  DESCRIPTION
  s.author      = ["Łukasz Fuszara"]
  s.email       = 'opalizoid@gmail.com'
  s.date        = '2016-11-11'
  s.homepage    = 'https://rubygems.org/gems/artemo'
  s.required_ruby_version = '>= 2.3.1'
  
  s.files       = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executable = 'artemo'
  s.require_path = ['lib']
  
  s.add_runtime_dependency 'squid', '~> 1.3'
  
  s.add_development_dependency 'rake', '~> 11.3'
  s.add_development_dependency 'rspec', '~> 3.5'
  s.add_development_dependency 'yard', '~> 0.9.5'
  s.add_development_dependency 'bundler', "~> 1.13"
end

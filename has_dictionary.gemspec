$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "has_dictionary"
  s.version     = "0.0.1"
  s.date		= '2012-10-27'
  s.authors     = ["Alex Gonzalez Lacasa"]
  s.email       = ["alooncom@gmail.com"]
  s.homepage    = "http://aloon.com"

  s.summary = "ActiveRecord association  with a class-based tableless enumerators"
  s.description = "ActiveRecord association  with a class-based tableless enumerators"

  s.files = ["lib/has_dictionary.rb", "lib/has_dictionary/dictionary.rb", "lib/has_dictionary/has_dictionary.rb", "README.md"]

  s.add_runtime_dependency 'activerecord', '>= 3.0.0'

end

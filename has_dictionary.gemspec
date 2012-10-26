$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "has_dictionary"
  s.version     = 0.1
  s.authors     = ["Alex Gonzalez Lacasa"]
  s.email       = ["alooncom@gmail.com"]
  s.homepage    = "http://aloon.com"

  s.summary = %q{activerecord association  with a class-based tableless enumerators}
  s.description = %q{activerecord association  with a class-based tableless enumerators}

  s.files = Dir["lib/*"] + ["README.md"]

  s.add_runtime_dependency 'activerecord', '>= 3.0.0'

end

# -*- encoding: utf-8 -*-
# stub: rack-lineprof 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-lineprof"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Evan Owen"]
  s.date = "2014-10-14"
  s.description = "Rack middleware for rblineprof (github.com/tmm1/rblineprof)"
  s.email = ["kainosnoema@gmail.com"]
  s.homepage = "https://github.com/kainosnoema/rack-lineprof"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Makes line-by-line source code profiling easy."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, ["~> 1.5"])
      s.add_runtime_dependency(%q<rblineprof>, ["~> 0.3.6"])
      s.add_runtime_dependency(%q<term-ansicolor>, ["~> 1.3"])
    else
      s.add_dependency(%q<rack>, ["~> 1.5"])
      s.add_dependency(%q<rblineprof>, ["~> 0.3.6"])
      s.add_dependency(%q<term-ansicolor>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<rack>, ["~> 1.5"])
    s.add_dependency(%q<rblineprof>, ["~> 0.3.6"])
    s.add_dependency(%q<term-ansicolor>, ["~> 1.3"])
  end
end

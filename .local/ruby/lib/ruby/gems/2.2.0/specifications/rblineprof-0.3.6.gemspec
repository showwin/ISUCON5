# -*- encoding: utf-8 -*-
# stub: rblineprof 0.3.6 ruby lib
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "rblineprof"
  s.version = "0.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Aman Gupta"]
  s.date = "2014-01-18"
  s.description = "rblineprof shows you lines of code that are slow."
  s.email = "aman@tmm1.net"
  s.extensions = ["ext/extconf.rb"]
  s.files = ["ext/extconf.rb"]
  s.homepage = "http://github.com/tmm1/rblineprof"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "line-profiler for ruby"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<debugger-ruby_core_source>, ["~> 1.3"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
    else
      s.add_dependency(%q<debugger-ruby_core_source>, ["~> 1.3"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
    end
  else
    s.add_dependency(%q<debugger-ruby_core_source>, ["~> 1.3"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
  end
end

# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{shared-mime-info}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mael Clerambault"]
  s.date = %q{2011-03-16}
  s.email = %q{mael@clerambault.fr}
  s.files = ["lib/magics.rb", "lib/shared-mime-info.rb", "Rakefile", "LICENSE", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Library to guess the MIME type of a file with both filename lookup and magic file detection}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

# -*- encoding: utf-8 -*-
# stub: circleci 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "circleci".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chavez".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDeDCCAmCgAwIBAgIBATANBgkqhkiG9w0BAQUFADBBMRAwDgYDVQQDDAdjb250\nYWN0MRkwFwYKCZImiZPyLGQBGRYJZWwtY2hhdmV6MRIwEAYKCZImiZPyLGQBGRYC\nbWUwHhcNMTYwOTE1MDMzMzM2WhcNMTcwOTE1MDMzMzM2WjBBMRAwDgYDVQQDDAdj\nb250YWN0MRkwFwYKCZImiZPyLGQBGRYJZWwtY2hhdmV6MRIwEAYKCZImiZPyLGQB\nGRYCbWUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC7IgLJd4v7Pxhr\nT7Zv18tua056wClwYeT/wl1xl2yRUxvmndQBfVU2iluDCyxUHm9qrM/RBsCbb5+j\n8KF/cQZ2Djin0/UyF9gUtUvH7u+WqiIvUXu24dM+ZllOl1H0v2EI0Y6FSfBF+SBR\nrPp2sEUmf6SILCIPUDUv7e761Qo1fWDwxCl5Oha1hgRnZOuL0u8vk/F2lbiNCawB\nePG/jmsL/iZir79JlwRcR+xFxwhWf89o4rXFU1UlhMeEUqNJ1pBFlckhurAFqFo9\nO1Fa0gH1kFy0aN6SRWQWjhrcLGUn/pCPXJiM73/Z4Z/Ni1WRdzZxf5fBM3BPyXsE\nuDgPCvfbAgMBAAGjezB5MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQW\nBBQo2Y/FiqKrLCAS/SmIUzqUyxBozTAfBgNVHREEGDAWgRRjb250YWN0QGVsLWNo\nYXZlei5tZTAfBgNVHRIEGDAWgRRjb250YWN0QGVsLWNoYXZlei5tZTANBgkqhkiG\n9w0BAQUFAAOCAQEApLkoB6zMgPxAKOArPd9x1Te8ByMq7GhIdln0KH5fsfKlBb8u\nxsoyR2t43DlJ69EmgiN5Tle1FBwceLb2Dm7kKpMot5QS5hfUouRzIKiUj3PDEsGF\nDkA344ljS+0RhQ5Q1WR4jN5ORVESFINykohGwknnSztc3jdSO5o/lZCDbjTuGXBS\nya+KouLuiHRzMU/3BFWrD5mCnOIwEP+QZBn8Ze8UkfxGA62xnsV5tHoc4FeW9uLs\n7DerzHxWdPmU1DsMCCh7B3R2HH0TONFQ67h7FuJPvLQkvbUuwzzjzpBwfhdCIEFn\nWUW78NBBFETQzQE3nG9TifbcEDrx/dODsAFzoQ==\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2017-05-26"
  s.description = "Ruby gem for Circle CI REST API".freeze
  s.email = "contact@el-chavez.me".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://github.com/mtchavez/circleci".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze, "--main=README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Circle CI REST API gem".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0.8.14", "~> 0.8.14"])
      s.add_development_dependency(%q<dotenv>.freeze, [">= 2.1.1", "~> 2.1.1"])
      s.add_development_dependency(%q<gemcutter>.freeze, [">= 0.7.1", "~> 0.7.1"])
      s.add_development_dependency(%q<multi_json>.freeze, [">= 1.12.1", "~> 1.12.1"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0.10.4", "~> 0.10.4"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 3.4.2", "~> 3.4.2"])
      s.add_development_dependency(%q<pry-doc>.freeze, [">= 0.10.0", "~> 0.10.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 11.2.2", "~> 11.2.2"])
      s.add_development_dependency(%q<redcarpet>.freeze, [">= 3.3.4", "~> 3.3.4"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.5.0", "~> 3.5.0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0.42.0", "~> 0.42.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0.12.0", "~> 0.12.0"])
      s.add_development_dependency(%q<typhoeus>.freeze, [">= 1.1.0", "~> 1.1.0"])
      s.add_development_dependency(%q<vcr>.freeze, [">= 3.0.3", "~> 3.0.3"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 3.0", "~> 3.0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0.9.5", "~> 0.9.5"])
    else
      s.add_dependency(%q<coveralls>.freeze, [">= 0.8.14", "~> 0.8.14"])
      s.add_dependency(%q<dotenv>.freeze, [">= 2.1.1", "~> 2.1.1"])
      s.add_dependency(%q<gemcutter>.freeze, [">= 0.7.1", "~> 0.7.1"])
      s.add_dependency(%q<multi_json>.freeze, [">= 1.12.1", "~> 1.12.1"])
      s.add_dependency(%q<pry>.freeze, [">= 0.10.4", "~> 0.10.4"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 3.4.2", "~> 3.4.2"])
      s.add_dependency(%q<pry-doc>.freeze, [">= 0.10.0", "~> 0.10.0"])
      s.add_dependency(%q<rake>.freeze, [">= 11.2.2", "~> 11.2.2"])
      s.add_dependency(%q<redcarpet>.freeze, [">= 3.3.4", "~> 3.3.4"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.5.0", "~> 3.5.0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0.42.0", "~> 0.42.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0.12.0", "~> 0.12.0"])
      s.add_dependency(%q<typhoeus>.freeze, [">= 1.1.0", "~> 1.1.0"])
      s.add_dependency(%q<vcr>.freeze, [">= 3.0.3", "~> 3.0.3"])
      s.add_dependency(%q<webmock>.freeze, [">= 3.0", "~> 3.0"])
      s.add_dependency(%q<yard>.freeze, [">= 0.9.5", "~> 0.9.5"])
    end
  else
    s.add_dependency(%q<coveralls>.freeze, [">= 0.8.14", "~> 0.8.14"])
    s.add_dependency(%q<dotenv>.freeze, [">= 2.1.1", "~> 2.1.1"])
    s.add_dependency(%q<gemcutter>.freeze, [">= 0.7.1", "~> 0.7.1"])
    s.add_dependency(%q<multi_json>.freeze, [">= 1.12.1", "~> 1.12.1"])
    s.add_dependency(%q<pry>.freeze, [">= 0.10.4", "~> 0.10.4"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 3.4.2", "~> 3.4.2"])
    s.add_dependency(%q<pry-doc>.freeze, [">= 0.10.0", "~> 0.10.0"])
    s.add_dependency(%q<rake>.freeze, [">= 11.2.2", "~> 11.2.2"])
    s.add_dependency(%q<redcarpet>.freeze, [">= 3.3.4", "~> 3.3.4"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.5.0", "~> 3.5.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0.42.0", "~> 0.42.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0.12.0", "~> 0.12.0"])
    s.add_dependency(%q<typhoeus>.freeze, [">= 1.1.0", "~> 1.1.0"])
    s.add_dependency(%q<vcr>.freeze, [">= 3.0.3", "~> 3.0.3"])
    s.add_dependency(%q<webmock>.freeze, [">= 3.0", "~> 3.0"])
    s.add_dependency(%q<yard>.freeze, [">= 0.9.5", "~> 0.9.5"])
  end
end

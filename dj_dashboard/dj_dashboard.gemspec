$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dj_dashboard/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dj_dashboard"
  s.version     = DjDashboard::VERSION
  s.authors     = ["Chris Tingley"]
  s.email       = ["support@conjure.co.uk"]
  s.homepage    = "http://www.conjure.co.uk"
  s.summary     = "Delayed Job Dashboard"
  s.description = "An easy way to monitor Active Record Delayed Jobs."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
end

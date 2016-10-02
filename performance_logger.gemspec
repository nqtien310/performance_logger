Gem::Specification.new do |s|
  s.name        = 'performance_logger'
  s.version     = '0.0.1'
  s.date        = '2010-04-28'
  s.summary      = "Logs a block of code's executation time"
  s.description  = "Logs a block of code's executation time"
  s.authors     = ["Tien Nguyen"]
  s.email       = 'nqtien310@gmail.com'
  s.files       = ["lib/performance_logger.rb"]

  s.add_development_dependency "rails"
  s.add_development_dependency "rspec"
  s.add_development_dependency "actionview"
  s.add_development_dependency "activesupport"
  s.add_development_dependency "byebug"
  s.add_development_dependency "timecop"
  s.homepage    = "https://github.com/nqtien310/performance_logger"
  s.license       = 'MIT'
end

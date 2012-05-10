Gem::Specification.new do |s|
  s.name          = 'underscore-template-rails'
  s.version       = '0.0.1'
  s.authors       = 'Jon Bracy'
  s.email         = 'jonbracy@gmail.com'
  s.homepage      = ''
  s.summary       = 'Underscore Templates for the Rails asset pipeline.'
  s.description   = 'Adds an Sprockets engine to the asset pipeline in Rails to handle templates'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency  'rails', '>= 3.1.0'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'poltergeist'
end

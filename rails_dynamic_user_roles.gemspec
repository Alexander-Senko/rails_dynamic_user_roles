$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rails_dynamic_user_roles/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
	s.name        = 'rails_dynamic_user_roles'
	s.version     = RailsDynamicUserRoles::VERSION
	s.authors     = [ 'Alexander Senko' ]
	s.email       = [ 'Alexander.Senko@gmail.com' ]
#	s.homepage    = 'TODO'
	s.summary     = 'DB-driven user roles & permits for Rails with CanCan support.'
#	s.description = 'TODO: Description of RailsDynamicUserRoles.'

	s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']

	s.add_dependency 'rails', '>= 3.2'
	s.add_dependency 'cancan'
	s.add_dependency 'rails_dynamic_associations' # TODO: decouple

	s.add_development_dependency 'sqlite3'
end

require RailsDynamicAssociations::Engine.root.join('app/models/role')

class Role < ActiveRecord::Base
	has_many :users,   through: :relations, source: :source, source_type: 'User'
	has_many :permits, class_name: 'User::Permit', inverse_of: :role
end

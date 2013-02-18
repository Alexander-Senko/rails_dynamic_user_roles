class User < ActiveRecord::Base
	has_many :relations, as: :source, conditions: { target_type: nil, target_id: nil }
	has_many :roles,     through: :relations
	has_many :permits,   through: :roles
end

class User < ActiveRecord::Base
	has_many :relations, as: :source
	has_many :roles,   through: :relations, class_name: '::Role'
	has_many :permits, through: :roles
end

class User::Role < Role
	default_scope -> {
		where(
			relations: { source_type: 'User', target_type: nil }
		).includes(
			:relations
		)
	}

	accepts_nested_attributes_for :permits, allow_destroy: true
end

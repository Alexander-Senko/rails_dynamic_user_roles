class User::Permit < ActiveRecord::Base
	belongs_to :role,    inverse_of: :permits
	belongs_to :subject, polymorphic: true, inverse_of: :applicable_permits

	validates_presence_of :behavior, :action

	scope :global, -> {
		where role_id: nil
	}

	def behavior_enum
		%w[
			can
			cannot
		]
	end

	def action_enum
		%w[
			read
			create
			update
			manage

			index
			new
			destroy
		]
	end


	def subject= record
		if record.is_a? Class then
			self.subject_type = record.base_class.name
		else
			super
		end
	end

	def subject
		if subject_type and not subject_id then
			subject_type.constantize
		else
			super
		end
	end
end

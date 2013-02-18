class Ability
	include CanCan::Ability

	def initialize user
		for permit in user.permits + User::Permit.where(role_id: nil) do
			send permit.behavior, permit.action.to_sym, permit.subject || :all
		end
	end
end

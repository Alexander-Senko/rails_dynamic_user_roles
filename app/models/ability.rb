class Ability
	include CanCan::Ability

	def initialize user
		for permit in permits_for user do
			send permit.behavior, permit.action.to_sym, permit.subject || :all
		end
	end

	def permits_for user
		(user.try(:permits) || []) + User::Permit.global
	end
end

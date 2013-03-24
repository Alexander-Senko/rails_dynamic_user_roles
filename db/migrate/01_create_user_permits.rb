class CreateUserPermits < ActiveRecord::Migration
	def change
		create_table :user_permits do |t|
			t.string     :behavior, null: false, default: :can
			t.string     :action,   null: false
			t.references :subject,  polymorphic: true
			t.references :role

			t.timestamps
		end
	end
end

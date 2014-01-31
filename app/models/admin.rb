class Admin < ActiveRecord::Base
	has_secure_password
	has_many :users

	validates :name, presence: true
	validates :email, presence: true

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			scoped
		end
	end
end
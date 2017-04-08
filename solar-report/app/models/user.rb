class User < ApplicationRecord
	validates :first_name, :last_name, :email, :password, :city, :state, :country, :address, presence: true
	validates :email, uniqueness: true

	has_secure_password
end

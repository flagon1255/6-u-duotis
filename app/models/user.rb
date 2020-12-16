class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	validates :name, presence:true
	validates :password, presence:true
	has_secure_password
end

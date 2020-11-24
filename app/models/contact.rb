class Contact < ApplicationRecord
	validates :Name, presence:true
	validates :Email, presence:true
	validates :Message, presence:true


	
end


class User < ActiveRecord::Base


	def self.check_admins(user)

		admins = ["TJ", "Aaron"]

		user.is_admin = false

		admins.each do |name|

			if user.name == name  #name is method and user is class. method and attribute are the same. class and reousrce the same. 

				user.is_admin = true 

			end

		end
	user.save
	return user.is_admin


	
	end
end

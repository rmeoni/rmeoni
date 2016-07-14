class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_secure_password

	def editor?
		self.role == 'editor'
	end

	def admin?
		self.role == 'admin'
	end

	def super?
		self.role == 'super'
	end

end

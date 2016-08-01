class Project < ActiveRecord::Base
	has_many :photographs

	def prev
		Project.where("id < ?", id).last
	end

	def next
		Project.where("id > ?", id).first
	end
end

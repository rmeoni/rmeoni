class Video < ActiveRecord::Base
		def prev
		Video.where("id < ?", id).last
	end

	def next
		Video.where("id > ?", id).first
	end
end

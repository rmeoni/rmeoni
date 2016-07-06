class Photograph < ActiveRecord::Base
	belongs_to :project

	def prev
		Photograph.where("id < ?", id).last
	end

	def next
		Photograph.where("id > ?", id).first
	end

end

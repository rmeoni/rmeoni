class PhotographsController < ApplicationController

	def index
		@photographs = Photograph.all
	end

	def show
		@photograph = Photograph.find(params[:id])
	end

	def new
		@photograph = Photograph.new
	end

	def create
		@photograph = Photograph.new(photo_params)
		if @photograph.save 
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@photograph = Photograph.find(params[:id])
	end

	def update
		@photograph = Photograph.find(params[:id])
		if @photograph.update_attributes(photo_params)
			redirect_to '/photographs'
		else
			render 'edit'
		end
	end

	def destroy
		@photograph = Photograph.find(params[:id])
		@photograph.destroy
		redirect_to '/photographs'
	end

	private

	def photo_params
		params.require(:photograph).permit(:name, :image, :iso, :exposure, :project_id)
	end
end

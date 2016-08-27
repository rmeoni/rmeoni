class VideosController < ApplicationController
	def index
		@videos = Video.all
	end

	def show
		@videos = Video.find(params[:id])
	end

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(project_params)
		if @video.save 
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@video = Video.find(params[:id])
	end

	def update
		@video = Video.find(params[:id])
		if @video.update_attributes(project_params)
			redirect_to root_path
		else
			render 'new'
		end
	end

	def destroy
		@video = Video.find(params[:id])
		@video.destroy
		redirect_to root_path
	end

	private

	def project_params
		params.require(:video).permit(:name, :image, :description, :url)
	end
end

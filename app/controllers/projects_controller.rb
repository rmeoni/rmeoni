class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
		@photographs = @project.photographs
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save 
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(project_params)
			redirect_to root_path
		else
			render 'new'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to root_path
	end

	private

	def project_params
		params.require(:project).permit(:name, :image, :description)
	end
end


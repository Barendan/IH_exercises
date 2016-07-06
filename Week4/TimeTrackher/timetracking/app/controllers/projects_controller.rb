class ProjectsController < ApplicationController
  # get /projects
	def index
		@projects_array = Project.order(created_at: "desc")
			   					 .limit(10)
		render "index"
	end

	def show
		@my_project = Project.find_by(id: params[:id])
		unless @my_project
			render "no_projects_found"
		render "show"
		end
	end
end

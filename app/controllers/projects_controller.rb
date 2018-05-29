class ProjectsController < ApiController


	def index
		projects = Project.all.find_by owner_id: project_params[:owner_id]
		render :json => projects
	end

	def show
		 project = Project.find(params[:id])
		 render :json => project
	end

	def create
		project = Project.create!(state_params)
		render :json => project
	end

	def project_params
		params.permit(:name, :desctription, :owner_id)
	end

end

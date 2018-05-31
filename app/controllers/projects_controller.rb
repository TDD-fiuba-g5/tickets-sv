class ProjectsController < ApiController


	def index
		projects = Project.all.where owner_id: project_params[:owner_id]
		render :json => projects, include: :states
	end

	def show
		 project = Project.find(params[:id])
		 render :json => project, include: :states
	end

	def create
		puts "asfasdf"
		puts project_params
		puts "aca termina"
		project = Project.create!(project_params)
		render :json => project, include: :states
	end

	def project_params
		params.permit(:name, :description, :owner_id, states_attributes: [:title])
	end

end

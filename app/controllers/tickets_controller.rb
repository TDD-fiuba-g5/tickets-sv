class TicketsController < ApplicationController

	def index
		project = Project.find(params[:project_id])
		tickets = project.tickets
		render :json => tickets
	end

	def show
		 ticket = Ticket.find(params[:id])
		 render :json => ticket
	end

	def create
		ticket = Ticket.create!(params)
		render :json => ticket
	end

	def user_params
		params.permit(:title, :description, :project_id, :ticket_type, :state)
	end

end

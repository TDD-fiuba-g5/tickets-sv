require 'dashboard_service'

class TicketsController < ApplicationController

	def index
		project = Project.find(ticketParams[:project_id])
		tickets = project.tickets
		render :json => tickets
	end

	def show
		 ticket = Ticket.find(ticketParams[:id])
		 render :json => ticket, include: :comments
	end

	def create
		ticket = Ticket.create!(ticketParams)
		#DashboardService.newEvent ticket.state
		render :json => ticket, include: :comments
	end

	def update
    ticket = Ticket.find(params[:id])
    ticket.update!(ticketParams)
    if (ticket.state != ticketParams[:state])
    	#DashboardService.newEvent ticket.state
    end 
    render :json => ticket, include: :comments
  end

	def ticketParams
		params.permit(:title, :description, :project_id, :ticket_type, :state, comments_attributes: [:text, :user_id])
	end

end

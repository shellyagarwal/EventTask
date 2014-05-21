class EventsController < ApplicationController
	# before_filter :authenticate_user!, :except => [:index]
	def index
		@events = Event.all.order(created_at: :desc)
	end
	def show
		@e = Event.find(params[:id])
	end
	def attend
		@e = Event.find(params[:id])
		current_user.events << @e
		redirect_to event_path(params[:id])
	end
	def unattend
		current_user.events.delete(Event.find(params[:id]))
		redirect_to event_path(params[:id])
	end
end

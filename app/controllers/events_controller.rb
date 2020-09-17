class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def new
        @event = current_user.events.build
    end

    def create
        @event = current_user.events.build(event_params)
    end

    def show
        @event = Event.find(params[:id])
    end
end

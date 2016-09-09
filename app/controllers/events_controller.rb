class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(events_params)
    @event.save
    redirect_to @event
  end

  private
  def events_params
    params.require(:event).permit(:name, :location, :date, :hour, :description)
  end
end

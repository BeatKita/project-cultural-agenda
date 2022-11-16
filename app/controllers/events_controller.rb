class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :place_name, :start_date, :end_date)
  end
end

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to admin_events_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :place_name, :start_date, :end_date)
  end
end

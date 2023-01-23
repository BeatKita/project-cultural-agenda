class EventsController < ApplicationController
  before_action :authenticate_admin!

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
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to admin_events_path
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to admin_events_path
  end

  private

  def event_params
    parameters = [:description, :place_name, :start_date, :end_date]
    parameters << :name if action_name.match?("create")
    params.require(:event).permit(parameters)
  end
end

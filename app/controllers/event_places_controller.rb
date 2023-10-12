class EventPlacesController < ApplicationController
    def index
    @eventplace = EventPlaces.all
    end

    def new
    @eventplace = EventPlaces.new
    end

    def create
    @eventplace = EventPlaces.new(event_places_params)

    if @eventplace.save
        redirect_to admin_event_places_path
    else
        render :new
    end
    end

    def edit
    @eventplace = EventPlaces.find(params[:id])
    end

    def update
    @eventplace = EventPlaces.find(params[:id])

    if @eventplace.update(event_places_params)
        redirect_to admin_event_places_path
    else
        render :edit
    end
    end

    def destroy
    @eventplace = EventPlaces.find(params[:id])
    @eventplace.destroy
    redirect_to admin_event_places_path
    end

    private

    def event_params
    parameters = [:description, :place_name, :open_hour, :close_hour ]
    parameters << :name if action_name.match?("create")
    params.require(:eventplace).permit(parameters)
    end
end

end

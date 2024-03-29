Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }
  authenticated :admin do 
    resources :admins
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  
  get "/admin/events", to: "events#index"
  get "/admin/events/new", to: "events#new"
  post "/admin/events", to: "events#create"
  get "/admin/events/:id/edit", to: "events#edit", as: "admin_events_edit"
  patch "/admin/events/:id", to: "events#update", as: "admin_events_update"
  delete "/admin/events/:id", to: "events#destroy", as: "admin_events_destroy"

  get "/admin/event_places", to: "event_places#index"
  get "/admin/event_places/new", to: "event_places#new"
  post "/admin/event_places", to: "event_places#create"
  get "/admin/event_places/:id/edit", to: "event_places#edit", as: "admin_events_places_edit"
  patch "/admin/event_places/:id", to: "event_places#update", as: "admin_events_places_update"
  delete "/admin/event_places/:id", to: "event_places#destroy", as: "admin_events_places_destroy"  


  # Defines the root path route ("/")
   root "pages#home"
end
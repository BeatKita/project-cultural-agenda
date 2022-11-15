Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  
  get "/admin/events", to: "events#index", as: "index_events"
  get "/admin/events/new", to: "events#new", as: "new_event"
  post "/events", to: "events#create"

  # Defines the root path route ("/")
  # root "articles#index"
end

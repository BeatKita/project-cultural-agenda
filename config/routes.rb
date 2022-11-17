Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  
  get "/admin/events", to: "events#index"
  get "/admin/events/new", to: "events#new"
  post "/admin/events", to: "events#create"
  get "/admin/events/:id/edit", to: "events#edit", as: "admin_events_edit"
  patch "/admin/events/:id", to: "events#update", as: "admin_events_update"
  # Defines the root path route ("/")
  # root "articles#index"
end
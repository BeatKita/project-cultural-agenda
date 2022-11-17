Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  
  get "/admin/events", to: "events#index"
  get "/admin/events/new", to: "events#new"
  get "/admin/events/:id/edit", to: "events#edit"
  post "/admin/events", to: "events#create"

  # Defines the root path route ("/")
  # root "articles#index"
end
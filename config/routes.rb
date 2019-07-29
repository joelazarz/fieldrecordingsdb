Rails.application.routes.draw do
  
  #field recording routes
  get "/fieldrecordings", to: "field_recordings#index", as: "field_recordings"
  get "/fieldrecordings/new", to: "field_recordings#new", as: "new_field_recording"
  get "/fieldrecordings/:id", to: "field_recordings#show", as: "field_recording"
  post "/fieldrecordings", to: "field_recordings#create"

  #artist routes
  get "/artists", to: "artists#index", as: "artists"
  get "/artists/new", to: "artists#new", as: "new_artist"
  get "/artists/:id", to: "artists#show", as: "artist"
  post "/artists", to: "artists#create"

  #location routes
  get "/locations", to: "locations#index", as: "locations"
  get "/locations/new", to: "locations#new", as: "new_location"
  get "/locations/:id", to: "locations#show", as: "location"
  post "/locations", to: "locations#create"

  #user routes
  get "/users", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"
  get "/signup", to: "users#new", as: "signup"
  post "/users", to: "users#create"

  #session routes
  get "/login", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"

end

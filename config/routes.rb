Rails.application.routes.draw do

  #field recording routes
  get "/fieldrecordings", to: "field_recordings#index", as: "field_recordings"
  get "/fieldrecordings/new", to: "field_recordings#new", as: "new_field_recording"

  get "/fieldrecordings/:id", to: "field_recordings#show", as: "field_recording"
  get "/fieldrecordings/:id/edit", to: "field_recordings#edit", as: "edit_field_recording"
  post "/fieldrecordings", to: "field_recordings#create"
  patch "/fieldrecordings/:id", to: "field_recordings#update"

  #artist routes
  get "/artists", to: "artists#index", as: "artists"
  get "/artists/new", to: "artists#new", as: "artist_signup"
  get "/artists/:id", to: "artists#show", as: "artist"
  get "/artists/:id/edit", to: "artists#edit", as: "edit_artist"
  post "/artists", to: "artists#create"
  patch "/artists/:id", to: "artists#update"


  #follow routes
  put "/artists/:id", to: "follows#create", as: "create_follow"
  delete "/artists/:id", to: "follows#destroy", as: "delete_follow"

  #location routes
  get "/locations", to: "locations#index", as: "locations"
  get "/locations/new", to: "locations#new", as: "new_location"
  get "/locations/:id", to: "locations#show", as: "location"
  get "/locations/:id/edit", to: "locations#edit", as: "edit_location"
  post "/locations", to: "locations#create"
  patch "/locations/:id", to: "locations#update"

  #user routes
  get "/users", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"
  get "/signup", to: "users#new", as: "user_signup"
  post "/users", to: "users#create"

  #session routes
  get "/login", to: "sessions#new_user", as: "login_user"
  get "/login/artist", to: "sessions#new_artist", as: "login_artist"
  post "/sessions/user", to: "sessions#log_user"
  post "/sessions/artist", to: "sessions#log_artist"
  delete "/logout", to: "sessions#destroy", as: "logout"

  #comment routes
  get "/comments/:id", to: "comments#show", as: "comment"
  get "/comments/new/:id", to: "comments#new", as: "new_comment"
  get "/comments/edit/:id", to: "comments#edit", as: "edit_comment"
  post "/comments", to: "comments#create"
  patch "/comments/:id", to: "comments#update"
  delete "/comments/:id", to: "comments#destroy", as: "delete_comment"

  #extra routes 
  get "/", to: "sessions#new_user"
end

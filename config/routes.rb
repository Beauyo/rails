Rails.application.routes.draw do
  root "notes#index"

  get "/about", to: "static_notes#about"

resources :notes
end
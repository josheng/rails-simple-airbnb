Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "flats#index"
  get "flats/search", to: "flats#search"
  resources :flats
end

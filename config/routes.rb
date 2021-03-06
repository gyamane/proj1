Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "pokemons/capture", to: "pokemons#capture", as: 'capture'
  patch "pokemons/damage", to: "pokemons#damage", as: 'damage'
  get "trainers/:id", to: "trainers#show"
  get "pokemons", to: "pokemons#new", as: 'create'
  post "trainers/:id", to: "pokemons#create"
end

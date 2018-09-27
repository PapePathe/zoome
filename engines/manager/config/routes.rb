Zoome::Manager::Engine.routes.draw do
  root to: 'dashboard#index'

  delete '/deconnexion',    to: 'sessions#destroy', as: :deconnexion
  get    '/connexion',      to: 'sessions#new',     as: :connexion
  post   '/connexion',      to: 'sessions#create'

  resources :doctors
  resources :animal_keepers
end

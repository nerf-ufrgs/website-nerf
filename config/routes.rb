Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :siriema_users
  resources :siriema

  # Defines the root path route ("/")
  root 'home#index'

  # Paths to Members
  get 'members', to: 'members#members', as: :members
  get 'collaborators', to: 'members#collaborators', as: :collaborators
  get 'ancient_collaborators', to: 'members#ancient_collaborators', as: :ancient_collaborators

  # Paths to Siriema Users
  get 'download_siriema_pt', to: 'siriema_users#download_siriema_pt'
  get 'download_siriema_en', to: 'siriema_users#download_siriema_en'
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'

  # Paths to Members
  get 'members', to: 'members#members', as: :members
  get 'collaborators', to: 'members#collaborators', as: :collaborators
  get 'ancient_collaborators', to: 'members#ancient_collaborators', as: :ancient_collaborators
end

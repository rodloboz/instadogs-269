Rails.application.routes.draw do
  root to: 'dogs#index'

  # get 'dogs/:id', to: 'dogs#show', as: :dog
  resources :dogs
end

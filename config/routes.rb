Rails.application.routes.draw do
  devise_for :artists,  path: 'artists'
  resources :artists, only: [:show] do
    resources :products do
      resources :images
    end
  end
  devise_for :users,  path: 'users'
  root to: 'pages#home'
  # get 'artists/:id', to: 'artists#show', as: "artist"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

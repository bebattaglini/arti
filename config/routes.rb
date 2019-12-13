Rails.application.routes.draw do
  devise_for :artists,  controllers: { registrations: "artists/registrations" }, path: 'artists'

  resources :artists, only: [:show] do
    resources :products, only: [:new, :create, :edit, :update, :delete] do
      resources :images
    end
  end
  devise_for :users,  path: 'users'
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  resources :products, only: [:index, :show]
  # get 'artists/:id', to: 'artists#show', as: "artist"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

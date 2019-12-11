Rails.application.routes.draw do
  devise_for :artists,  path: 'artists'
    get 'artists/:id', to: 'artists#show', as: "artist"
  devise_for :users,  path: 'users'
  root to: 'pages#home'
  resources :products do
    resources :images
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

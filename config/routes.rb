Rails.application.routes.draw do
  devise_for :artists, controllers: { registrations: "artists/registrations", sessions: "artists/sessions" }, path: 'artists'
  resources :artists, only: [:show] do
    get 'artist_dashboard', to: 'pages#dashboard', as: :dashboard
    resources :products, only: [:new, :create, :edit, :update, :delete] do
      resources :images
    end
  end
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }, path: 'users'
  root to: 'pages#home'
  get 'dashboard', to: 'pages#artist_dashboard', as: :dashboard
  resources :products, only: [:index, :show]
end

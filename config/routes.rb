Rails.application.routes.draw do
  devise_for :artists, controllers: { registrations: "artists/registrations", sessions: "artists/sessions" }, path: 'artists'
  resources :artists, only: [:show] do
    resources :products, only: [:new, :create, :edit, :update, :delete] do
      resources :images
    end
  end
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }, path: 'users'
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'panel', to: 'pages#panel', as: :panel
  resources :products, only: [:index, :show]
end

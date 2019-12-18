Rails.application.routes.draw do
  resources :products, only: [:new, :create, :update, :edit, :destroy, :show] do
    resources :images
  end
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }, path: 'users'
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'panel', to: 'pages#panel', as: :panel
  resources :products, only: [:index, :show]
end

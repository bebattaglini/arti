Rails.application.routes.draw do
  devise_for :artists,  path: 'artists'
  devise_for :users,  path: 'users'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'comics#index'
  resources :comics
  get 'about', to: 'comics#about'
end

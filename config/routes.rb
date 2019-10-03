Rails.application.routes.draw do
  root 'comics#index'
  resources :comics do 
    resources :panels, only: :create
  end
  get 'about', to: 'comics#about'
end

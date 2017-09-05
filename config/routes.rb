Rails.application.routes.draw do
  get 'account_activations/edit'

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'static_pages#home'
  get "home" => 'static_pages#home'
  get "help" => 'static_pages#help'
  get "about" => 'static_pages#about'
  get "contact" => 'static_pages#contact'
  get "newuser" => 'users#new'
  get "address" => 'addresss#index'
  get "login" => 'sessions#new'
  post "login" => 'sessions#create'
  delete "logout" => 'sessions#destroy'
  resources :users
  resources :address

  resources :microposts, only: [:create, :destroy]
  
end

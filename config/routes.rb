Practica::Application.routes.draw do
    
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  root "static_page#home"
  match '/help', to: "static_page#help", via: 'get'
  match '/about', to: "static_page#about", via: 'get'
  match 'contact', to: "static_page#contact", via: 'get'  
  match '/signup', to: "users#new", via: 'get'
  match '/signin', to: "sessions#new", via: 'get'
  match '/signout', to: "sessions#destroy", via: 'delete'
  
end

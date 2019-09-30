Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :tasks
  patch 'todos/:id', to: 'todos#update', as: 'todo'    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
end

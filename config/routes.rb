Rails.application.routes.draw do
  resources :items
  resources :order_lines
  resources :orders
  get 'users/new'

  root 'static_pages#home'
  get 'static_pages/home'
  get 'new', to: "users#new"
  resources :users

end

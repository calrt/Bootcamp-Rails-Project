Rails.application.routes.draw do
  resources :orders
  resources :products do
    resources :orders, only: [:show, :new, :create]
  end
  devise_for :users
  root 'products#index'
  # get 'order', to: 'products#order'
  # resources :charges
  get 'products/:id/orders/new', to: 'order#new', as: 'checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
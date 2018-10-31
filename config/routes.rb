Rails.application.routes.draw do
  resources :products
  devise_for :users
  root 'products#index'
  # get 'order', to: 'products#order'
  # resources :charges
  get 'products/:id/order', to: 'charges#order', as: 'order'
  post 'products/:id/order/confirmation', to: 'charges#create', as: 'charge'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

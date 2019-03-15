Rails.application.routes.draw do

  resources :payments
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end
  
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admins
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, concerns: :paginatable
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :payments, only: [:index, :new, :create]
  root to: 'products#index'

  resources :categories do
    member do
      get :products
    end
  end

end

Rails.application.routes.draw do
 
  get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :stores,controllers: {
    registrations: 'stores/registrations',
    sessions: 'stores/sessions'
  }
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    delete 'sign_out', to: 'devise/sessions#destroy'
  end
  resources :comments
  
  resources :storextras do
    resources :likes
  end
  resources :billings
  resources :categories
  resources :products
  resources :users 
  resources :stores
  resources :orders, only: :index

  delete 'orders/clean', to: 'orders#clean', as: 'clean_orders'
  delete 'order/:id', to: 'orders#destroy', as: 'destroy_order'
  
  resources :billings, only: [] do
    collection do
      get 'pre-pay'
      get 'execute'
    end 
  end 
  
  post 'storextras/:id', to: 'comments#create', as:'comment_store'
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  resources :stores
  resources :store_extras
  resources :categories
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

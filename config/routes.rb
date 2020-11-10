Rails.application.routes.draw do
  resources :store_extras
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :stores
  resources :categories
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

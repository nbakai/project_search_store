Rails.application.routes.draw do
  resources :storextras
  devise_for :stores,controllers: {
    registrations: 'stores/registrations',
    sessions: 'stores/sessions'
  }
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  resources :categories
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }  
  namespace :admin do
    resources :users
  end
  root :to => 'boards#index'
  resources :posts, only:[:show, :new, :create, :destroy]
  resources :boards, only:[:show, :new, :create, :destroy]
  resources :categories, only:[:create, :destroy]
end

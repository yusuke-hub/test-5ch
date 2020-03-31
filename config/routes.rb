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
  
  root :to => 'boards#index'
  resources :users
  resources :boards, only:[:show, :new, :create, :destroy]
  resources :categories, only:[:create, :destroy]
  resources :posts, only:[:show, :new, :create, :destroy]

  namespace :admin do
    resources :users, only:[:index, :destroy]
    resources :boards, only:[:index, :destroy]
    resources :categories, only:[:index, :create, :destroy]
  end
end

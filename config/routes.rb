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
  resources :boards, only:[:show, :new, :create, :destroy, :search, :result]
  resources :categories, only:[:create, :destroy]
  resources :posts, only:[:show, :new, :create, :destroy]
  get '/search', to: 'boards#search', as: 'search'  
  get '/search/result', to: 'boards#result', as: 'search_result'  
  namespace :admin do
    resources :users, only:[:index, :destroy]
    resources :boards, only:[:index, :destroy]
    resources :categories do
      patch :toggle_status
    end
  end
end

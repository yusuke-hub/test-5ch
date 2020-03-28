Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'boards#index'
  resources :posts, only:[:show, :new, :create, :destroy]
  resources :boards, only:[:show, :new, :create, :destroy]
  resources :categories, only:[:create, :destroy]
end

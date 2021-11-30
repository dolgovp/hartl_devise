Rails.application.routes.draw do
  devise_for :users
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'static_pages#home'
  get  'help' => 'static_pages#help'
  get  'about' => 'static_pages#about'
  get  'contact' => 'static_pages#contact'
  devise_scope :user do
    get '/users/sign_out'=> 'devise/sessions#destroy'
  end
 
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

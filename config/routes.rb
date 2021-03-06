Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }
  resources :users, only: :show
  resources :location, only: :create
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  resources :seek, only: [:index, :new]
  resources :tweets do
    resources :pashiris, only: [:new, :create]
  end
  root to: "home#index"
end

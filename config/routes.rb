Rails.application.routes.draw do
  resources :users, only: [] do   
    resources :answers, only: [:new, :create]
    namespace :admin do
      resources :answers, only: [:show, :destroy]
    end
  end
  
  resource :answers, only: [:show]
  namespace :admin do
    resources :answers, only: [:index]
    resources :users, only: [:index, :show]
  end
  
  devise_for :users
  
  # ログインページをルートパスにする
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
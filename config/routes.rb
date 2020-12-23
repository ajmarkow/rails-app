Rails.application.routes.draw do
  
  devise_for :users, :controllers => {omniauth_callbacks: 'users/omniauth'}
    devise_scope :user do
      get 'users/sign_in', to: 'users/sessions#new'
      get 'users/sign_out', to: 'users/sessions#destroy'
      get 'users/:id', to: 'users#show', :as => :user
    end
  resources :snippets_lists
  resources :snippets
  root to: 'home#index'
  get 'snippets/main', to: 'snippets#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

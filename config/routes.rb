Rails.application.routes.draw do
  resources :tags
  devise_for :users, :controllers => {omniauth_callbacks: 'users/omniauth'}
    devise_scope :user do
      get 'users/sign_in', to: 'users/sessions#new'
      get 'users/sign_out', to: 'users/sessions#destroy'
      get 'users/:id', to: 'users#show', :as => :user
    end
  resources :snippets_lists
  resources :snippets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

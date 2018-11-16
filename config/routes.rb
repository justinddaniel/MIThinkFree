Rails.application.routes.draw do
  root 'welcome#home'
  get '/about', to: 'welcome#about', as: 'about'
  resources :posts do
    resources :comments, only: [:new, :create, :edit, :update, :destroy]
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, only: [:show] do
    resources :profiles, only: [:new, :create, :edit, :update]
    resources :blogposts, only: [:new, :create, :edit, :update]
  end
  resources :interests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

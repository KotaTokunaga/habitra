Rails.application.routes.draw do
  root "home#top"

  devise_for :users
  get "inquiry" => "question_form#index"
  get "users/confirmation" => "users#confirmation"
  get "/users" => "users#index"

  resources :maps
  resources :photos
  resources :tweets
  resource :tweet
  resources :users, :only => [:index, :show, :update]

  get "/home" => "home#top"
  post "/" => "tweets#index"
  post "tweets/:id" => "tweets#show"
  post "tweets/:id/edit" => "tweets#edit"

  # 修正前のルーティングを下に残しておきました。

  # get 'users/index'
  # get 'users/show'
  #
  # get "home" => "home#top"
  # get "inquiry" => "question_form#index"
  #
  # get "user_all" => "users#index"
  # get "users/show/:id" => "users#show"
  # post "users/edit/:id" => "users#edit"
  # get "users/edit/:id" => "users#edit"
  #
  # resources :maps
  # resources :photos
  # devise_for :users,  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # root to:"tweets#index"
  # resources :tweets
  # resources :users, :only => [:index, :show, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

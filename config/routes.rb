Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :tags, only: [:show]
  resources :categories
  root 'home#index'
  devise_for :users
resources :photos, :only => [:index, :new, :create]
  get 'home/profile'
  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
  resources :manuals do
    member do
      put "like" => "manuals#upvote"
      put "unlike" => "manuals#downvote"
    end
    resources :steps
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

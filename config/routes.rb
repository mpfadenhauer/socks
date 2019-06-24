Rails.application.routes.draw do
  devise_for :users
  get 'profile/:id', to: 'pages#profile', as:'profile'
  resources :socks do
    resources :transactions, only: [:show, :new, :create]
  end
  root to: 'socks#index'
  get "profile/:id/reviews/new", to: "reviews#new", as:"new_review"
  post "profile/:id", to: "reviews#create", as:"user_reviews"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

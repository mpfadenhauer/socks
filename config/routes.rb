Rails.application.routes.draw do
  devise_for :users
  get 'profile/:id', to: 'pages#profile'
  resources :socks do
    resources :transactions, only: [:show, :new, :create]
  end
  root to: 'socks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

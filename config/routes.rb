Rails.application.routes.draw do
resources :socks do
  resources :transactions, only: [:show, :new, :create]
  devise_for :users
end
  root to: 'socks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

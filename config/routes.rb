Rails.application.routes.draw do
resources :socks do
  resources :transactions, only: :show
  devise_for :users
end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'transactions/new'
  get 'transactions/create'
  get 'socks/index'
  get 'socks/show'
  get 'socks/new'
  get 'socks/create'
  get 'socks/edit'
  get 'socks/update'
  get 'socks/delete'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

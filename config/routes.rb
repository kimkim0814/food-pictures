Rails.application.routes.draw do
  devise_for :users
  post '/posts/guest_sign_in', to: 'posts#new_guest'
  root to: 'posts#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: :create
    collection do
      get 'search'
    end

  end
  resources :users, only: :show
  resources :comments,only: [:edit,:destroy]
  get 'sort', to:'posts#sort'

end

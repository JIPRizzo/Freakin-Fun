Rails.application.routes.draw do
mount Attachinary::Engine => "/attachinary"

resources :toys, only: [:index, :show, :new, :create] do
  resources :bookings, only: [:create, :update]
end

devise_for :users
root to: 'pages#home'
get "/dashboard", to: "dashboard#index" # controller name & respective action # added to rails routes in order refelct on routes.rb
end


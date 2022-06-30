Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :update, :create, :destroy] do 
    resources :artworks, only: [:index]
  end 
  resources :artworks, only: [:show, :update, :create, :destroy]
  resources :artworkshares, only: [:create, :destroy]
  resources :comments, only: [:index, :create, :destroy]
  resources :likes, only: [:index, :create, :destroy]
end

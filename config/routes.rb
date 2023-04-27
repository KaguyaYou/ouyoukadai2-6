Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to:"homes#top"
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :book_comments,only:[:create,:destroy]
    resources :favorites,only:[:create, :destroy]
  end
  resources :users, only: [:index,:show,:edit,:update]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
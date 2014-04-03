Whatsmass::Application.routes.draw do
  resources :lists

  resources :receivers

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
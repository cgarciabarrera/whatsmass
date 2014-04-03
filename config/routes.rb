Whatsmass::Application.routes.draw do
  get "receivers_on_lists/create"
  resources :lists

  resources :receivers

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  resources :receivers_on_lists do
    get :create
  end

end
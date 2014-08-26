Fitnessdoc::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get]


	get 'signup', to: "admins#new", as: "signup"
	get 'login', to: "sessions#new", as: "login"
	get "logout", to: "sessions#destroy", as: "logout"
 namespace :admins do 
  resources :users
end
resources :sessions
resources :admins
resources :users
root "welcome#index"
end

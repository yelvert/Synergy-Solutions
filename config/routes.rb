SynergySolutions::Application.routes.draw do
  get "about", :to => "about#index"

  get "administration", :to => "administration#index"

  devise_for :admins do
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
  end
  resources :admins
  
  get "home", :to => "home#index"
  
  root :to => "home#index"
end

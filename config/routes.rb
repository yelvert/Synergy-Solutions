SynergySolutions::Application.routes.draw do
  resources :page_texts

  get "about_us", :to => "about_us#index"

  get "administration", :to => "administration#index"

  devise_for :admins do
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
  end
  resources :admins
  
  get "home", :to => "home#index"
  
  root :to => "home#index"
end

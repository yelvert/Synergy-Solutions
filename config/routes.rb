SynergySolutions::Application.routes.draw do
  devise_for :admins do
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
  end
  get "home/index"
  
  root :to => "home#index"
end

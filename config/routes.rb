SynergySolutions::Application.routes.draw do
  resources :pages, :controller => 'pages', :only => :show
  %w(about services portfolio).each do |p|
    get p, :to => 'pages#show', :id => p
  end
  get 'administration', :to => 'administration#index'
  devise_for :admins do
    get 'login', :to => 'devise/sessions#new'
    get 'logout', :to => 'devise/sessions#destroy'
  end
  resources :admins
  get 'home', :to => 'home#index'
  root :to => 'home#index'
end

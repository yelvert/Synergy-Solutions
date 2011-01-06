SynergySolutions::Application.routes.draw do
  devise_for :admins do
    get 'login', :to => 'devise/sessions#new'
    get 'logout', :to => 'devise/sessions#destroy'
  end
  
  get 'administration', :to => 'administration#index'
  namespace "administration" do
    resources :admins
    resources :posts
  end
  
  resources :posts, :only => [:index, :show]
  
  resources :pages, :controller => 'pages', :only => :show
  %w(about services portfolio).each do |p|
    get p, :to => 'pages#show', :id => p
  end
  
  get 'home', :to => 'home#index'
  root :to => 'home#index'
end

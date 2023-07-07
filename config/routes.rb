Rails.application.routes.draw do
  #get 'welcome/index'
  
  devise_for :users
  get 'vendedor/index'
  # get 'home/index'
  get '/home', to: "home#index"
  get '/welcome', to: "welcome#index"
  # Defines the root path route ("/")
  root "welcome#index"

=begin
  unauthenticated do
    root :to => 'welcome#index'
  end

  authenticated do
    root :to => 'home#index'
  end
  end
=end
end
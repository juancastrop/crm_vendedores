Rails.application.routes.draw do
  get 'vendedor/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "vendedor#index"
end

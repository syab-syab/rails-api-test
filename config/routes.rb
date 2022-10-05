Rails.application.routes.draw do
  # get 'somethings/index'
  # get 'colors/index'
  # get 'color/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :somethings
  resources :colors
end

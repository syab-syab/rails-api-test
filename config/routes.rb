Rails.application.routes.draw do
  # get 'teas/index'
  # get 'types/index'
  # get 'caffeines/index'
  # get 'somethings/index'
  # get 'colors/index'
  # get 'color/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :somethings
  resources :colors
  resources :teas
  resources :types
  resources :caffeines
end

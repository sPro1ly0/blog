# routing file tells Rails how to connect incoming requests to controllers and actions
Rails.application.routes.draw do
  get 'welcome/index' # maps requests to http://localhost:3000/welcome/index to the welcome controller's index action

  # resources methods used to declare a REST resource
  resources :articles

  # 'controller#action'
  root 'welcome#index' # map requests to root of app to the welcome controller's index action
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

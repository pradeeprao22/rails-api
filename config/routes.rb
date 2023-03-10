Rails.application.routes.draw do
  devise_for :users, controllers: { 
    sessions: 'users/sessions' 
  }       
  resources :people
  get 'api/auth/verify', to: 'users/sessions#verify'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

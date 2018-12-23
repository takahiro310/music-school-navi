Rails.application.routes.draw do
  root :to => 'schools#index', :as => 'home'

  resources :schools, controller: 'schools'

  get 'signup', :to => 'users#new'
  post 'users/create'

  get '/login', :to => 'sessions#new'
  post '/login', :to => 'sessions#create'

  get 'auth/:provider/callback' => 'omniusers#create'

end

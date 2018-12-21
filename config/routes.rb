Rails.application.routes.draw do

  root :to => 'schools#index', :as => 'home'

  get 'schools/new'
  post 'schools/create'

  get 'schools/:id', :to => 'schools#show'
  match 'search/:q', :to => 'schools#search', :via => [:get, :post]

  get 'signup', :to => 'users#new'
  post 'users/create'

  get '/login', :to => 'sessions#new'
  post '/login', :to => 'sessions#create'

end

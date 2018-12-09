Rails.application.routes.draw do
  root :to => 'schools#index', :as => 'home'
  get '/schools/:id', :to => 'schools#show'
  
  match 'search/:q', :to => 'schools#search', :via => [:get, :post]
end

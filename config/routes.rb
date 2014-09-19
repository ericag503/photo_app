Rails.application.routes.draw do

get 'signup', to: 'accounts#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'


  resources :accounts, :expect => [:index]
  resources :sessions, :execpt => [:index]
end

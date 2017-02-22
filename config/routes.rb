Rails.application.routes.draw do

  resources :garagistes
  root to: 'page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # rdv
  post "search", to: "search#create"
  get "search/:id", to: "search#show"

  # rdv appointment
  get "search/:id/appointment", to: "search#edit"
  post "search/:id/appointment", to: "search#update"

end

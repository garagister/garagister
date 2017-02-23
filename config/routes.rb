Rails.application.routes.draw do

  resources :garagistes
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :searches, only:[:create, :show]

  # rdv appointment
  get "search/:id/appointment", to: "search#edit"
  post "search/:id/appointment", to: "search#update"

end

Rails.application.routes.draw do
  get 'search/show'

  get 'search/create'

  get 'search/edit'

  get 'search/update'

  resources :garagistes
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # rdv
  post "search", to: "search#create"
  get "search/:id", to: "search#show"

  # rdv appointment
  get "search/:id/appointment", to: "search#edit"
  post "search/:id/appointment", to: "search#update"

end

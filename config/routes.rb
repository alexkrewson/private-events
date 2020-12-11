Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :events
  resources :event_attendings

  resources :widget_sessions ,only: [:destroy] 

  # get '/destroy_session', to: 'session#destroy_[whatever]', via: [:destroy], as: :clear_[whatever]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#index"

  post '/events/:id', to: 'event_attendings#create'

end

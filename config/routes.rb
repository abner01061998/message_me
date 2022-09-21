Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
  delete 'destroy_session', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create,]
  post 'message',to: 'messages#create'

  mount ActionCable.server, at:'/cable'
end

Rails.application.routes.draw do
  root 'code#index'

  resources :code
  get '/woar', to: 'code#new'
  post '/woar', to: 'code#adminCreate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

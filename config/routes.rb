Rails.application.routes.draw do
  root 'codes#index'

  resources :codes, only: [:index, :new, :create]
  get '/woar', to: 'codes#new'
  post '/woar', to: 'codes#adminCreate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

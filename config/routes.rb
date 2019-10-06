Rails.application.routes.draw do
  root 'codes#index'

  namespace :api, defaults: {format: :json} do
    resources :codes, only: [:index, :new, :create]
  end

  get '/woar', to: 'codes#new'
  post '/woar', to: 'codes#adminCreate'
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  get '/password-generator', to: 'password_generator#index'
  post '/password-generator', to: 'password_generator#generate'
  
  get '/sha256', to: 'sha256#index'
  post '/sha256', to: 'sha256#generate'

  get '/sha512', to: 'sha512#index'
  post '/sha512', to: 'sha512#generate'

  get '/md5', to: 'md5#index'
  post '/md5', to: 'md5#generate'

  get '/base64', to: 'base64#index'
  post '/base64', to: 'base64#generate'

  get '/urlencoder', to: 'urlencoder#index'
  post '/urlencoder/encode', to: 'urlencoder#encode', as: :urlencoder_encode
  post '/urlencoder/decode', to: 'urlencoder#decode', as: :urlencoder_decode
end

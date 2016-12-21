Rails.application.routes.draw do
  get '/support', to: 'support#index'

  root to: 'pages#index'
end

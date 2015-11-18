Rails.application.routes.draw do
  get '/page/new' => 'pages#new'

  post '/page' => 'pages#create'

end

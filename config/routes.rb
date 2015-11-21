Rails.application.routes.draw do
  get  '/page/new' => 'pages#new'
  post  '/page/new' => 'pages#new'
  post '/page/confirm' => 'pages#confirm'
  post '/page' => 'pages#complete'

end

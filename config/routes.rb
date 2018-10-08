Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/talks', to: 'pages#talks'
  get '/guides', to: 'pages#guides'
  get '/keyword_first', to: 'pages#keyword_first'
  get '/taiwan_departments', to: 'pages#taiwan_departments'
end

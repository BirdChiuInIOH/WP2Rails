Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/talks', to: 'pages#talks'
  get '/guides', to: 'pages#guides'
  get '/keyword_first', to: 'pages#keyword_first'
  get '/taiwan_departments', to: 'pages#taiwan_departments'
  get '/contact_us', to: 'pages#contact_us'
  get '/媒體報導', to: 'pages#press', as: :press
  get '/about', to: 'pages#about'
end

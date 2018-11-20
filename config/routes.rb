Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/talks', to: 'pages#talks'
  get '/talks/香港教育大學英語教育系-彭于榛-barbie-peng-ov-study-bde-hk', to: 'pages#talks_show', as: :talks_show
  get '/talks_experience', to: 'pages#talks_experience'
  get '/talks_how_to_apply', to: 'pages#talks_how_to_apply'
  get '/guides', to: 'pages#guides'
  get '/reciprocal', to: 'pages#reciprocal'
  get '/台灣各校系學群總覽', to: 'pages#taiwan_departments', as: :taiwan_departments
  get '/contact_us', to: 'pages#contact_us'
  get '/媒體報導', to: 'pages#press', as: :press
  get '/about', to: 'pages#about'
  get '/news', to: 'pages#news'
  get '/申請香港的大學', to: 'pages#post'
  get '/teams', to: 'pages#teams'
  get '/贊助我們', to: 'pages#sponsor', as: :sponsor
  get '/overseas', to: 'pages#overseas'
  get '/ioh現場講座', to: 'pages#events', as: :events
  get '/how_to_apply/usa', to: 'pages#how_to_apply_usa'
  get '/search', to: 'pages#search'
end

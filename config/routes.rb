Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'index#index'

  get '/memos', to: 'memo#all'
  post '/memos', to: 'memo#create'
  post '/memos/:id', to: 'memo#update'

end

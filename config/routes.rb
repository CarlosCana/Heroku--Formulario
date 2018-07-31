Rails.application.routes.draw do
  
  root 'user#new'
  post '/create', to: 'user#create', as: 'create'
  
end



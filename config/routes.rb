Rails.application.routes.draw do
  root "welcome#index"
  
  get '/foods', to: 'food#show'
end

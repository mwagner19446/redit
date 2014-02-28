Redit::Application.routes.draw do
  
  root "welcome#index"
  
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
  
  resources :users, except: [:index] do 
    resources :stories
  end 


end

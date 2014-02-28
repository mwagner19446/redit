Redit::Application.routes.draw do
  
  root "welcome#index"

  resources :users, except: [:index]

end

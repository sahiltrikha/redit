Redit::Application.routes.draw do
  resources :users do
    resources :stories
  end

  resources :stories

  root "stories#index"
  
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
end

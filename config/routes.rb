Redit::Application.routes.draw do
  resources :users do
    resources :stories
  end

  get '/stories', to: "stories#index"

  root "stories#index"
end

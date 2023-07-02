Rails.application.routes.draw do
  resources :musics
  namespace :api do
    resources :users, only: [:create, :index]
    post "/login", to: "users#login"
  end
end

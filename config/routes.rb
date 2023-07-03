Rails.application.routes.draw do
  namespace :api do
    resources :musics
    resources :users, only: [:create, :index]
    post "/login", to: "users#login"
  end
end

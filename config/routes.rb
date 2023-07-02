Rails.application.routes.draw do
  namespace :api do
    resources :users, only: [:create, :index]
    post "/login", to: "users#login"
  end
end

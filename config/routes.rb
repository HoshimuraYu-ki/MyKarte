Rails.application.routes.draw do
  devise_for :users
  root to: "kartes#index"
  resources :kartes
end
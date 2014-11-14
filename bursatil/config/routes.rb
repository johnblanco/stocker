Bursatil::Application.routes.draw do
  get "home/new"

  get "sign_up" => "users#new", :as => "sign_up"
  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  root :to => "home#new"
  resources :users
  resources :sessions
end

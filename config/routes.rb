Notecloud::Application.routes.draw do
  get "static_pages/home"

  devise_for :users
  
  resources :users
  
  root :to => "static_pages#home"

end

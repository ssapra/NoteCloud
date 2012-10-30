Notecloud::Application.routes.draw do
  resources :notes

  get "static_pages/home"

  devise_for :users
  
  resources :users
  
  resources :headings
  
  root :to => "static_pages#home"

end

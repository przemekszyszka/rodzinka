Rodzinka::Application.routes.draw do

  devise_for :users

  resources :users do
    resources :albums do
      resources :photos
    end
  end
  
  root :to => "users#index"
end

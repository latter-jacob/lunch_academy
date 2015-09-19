Rails.application.routes.draw do
  root "lunches#index"
  resources :lunches
  resources :users
end

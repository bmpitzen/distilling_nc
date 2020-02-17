Rails.application.routes.draw do
  resources :spirits
  resources :spirit_types
  resources :regions
  resources :distilleries
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

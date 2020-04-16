Rails.application.routes.draw do

# This is to make nicer URLs in kaminari
  concern :paginatable do
    get "(page/:page)", action: :index, on: :collection, as: ""
  end

  resources :spirits
  resources :spirit_types
  resources :regions
  resources :distilleries, concerns: :paginatable
  root 'home#index'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

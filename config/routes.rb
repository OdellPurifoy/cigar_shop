Rails.application.routes.draw do
  resources :cigars
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'shop#index'
end

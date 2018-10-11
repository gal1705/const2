Rails.application.routes.draw do

  get 'companies', to: 'companies#index'
  get 'companies/architects', to: 'companies#index'

  devise_for :companies, controllers: {
    registrations: 'companies/registrations'
  }
  
  resources :categories
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

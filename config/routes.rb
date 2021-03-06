Rails.application.routes.draw do
  get 'homes/index'
  # resources :descriptions
  # resources :redescriptions
  resources :projects

#  get 'recompanies', to: 'recompanies#index'
#  get 'companies', to: 'companies#index'
#  get 'companies/architects', to: 'companies#index'

  devise_for :recompanies, path: 'recompanies', controllers: {
    sessions: "recompanies/sessions",
    registrations: 'recompanies/registrations'
  }

  devise_for :companies, path: 'companies', controllers: {
    sessions: "companies/sessions",
    registrations: 'companies/registrations'
  }

  resources :recompanies, only: [:index, :show] do
    resource :redescriptions
    member do
      get 'contact'
    end
  end

  resources :companies, only: [:index, :show] do
    resource :description
    member do
      get 'contact'
    end
  end

  resources :categories
  root to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

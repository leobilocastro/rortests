Rails.application.routes.draw do

  resources :services, only: [:new,:create, :show, :index]
  resources :contracts, only:  [:new,:create, :show, :index]
  devise_for :users
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

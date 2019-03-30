Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'home/funciona'
  get 'home/termos'
  get 'home/sobre'
  get 'home/contato'
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

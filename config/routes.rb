Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'home/funciona'
  get 'home/termos'
  get 'home/sobre'
  get 'home/contato'
  
  root to: 'home#index'
  namespace 'api' do
    namespace 'v1' do
       resources :users, :services
    end
  end
  
end


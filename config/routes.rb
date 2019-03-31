Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'home/funciona'
  get 'home/termos'
  get 'home/sobre'
  get 'home/contato'
  get '/home/cadprest'
  
  root to: 'home#index'
  namespace 'api' do
    namespace 'v1' do
       resources :prestador, :services
    end
  end
  
end


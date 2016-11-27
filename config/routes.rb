Rails.application.routes.draw do

  resources :pourtests
  resources :sites

  devise_for :users

  root 'public#home'

  get 'dashboard' => 'dashboard#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :schedules
  resources :staffs
  resources :roles
  resources :groups
  resources :coords
  resources :drops
  resources :schools
  devise_for :users
  devise_for :views
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

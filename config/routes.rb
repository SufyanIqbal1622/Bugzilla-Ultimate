Rails.application.routes.draw do
  devise_for :users
  root to:'home#index'
  resources :projects
  ActiveAdmin.routes(self)
  resources :project_managers, only:[:show, :edit]
end

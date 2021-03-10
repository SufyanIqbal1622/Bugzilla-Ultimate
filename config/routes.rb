Rails.application.routes.draw do
   devise_for :users #, controllers:{
  #   registrations: 'developers/registrations'
  #   registrations: 'q_as'
  # }
  root to: "projects#index"
  resources :projects
  ActiveAdmin.routes(self)

end

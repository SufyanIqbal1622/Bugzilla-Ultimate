Rails.application.routes.draw do
  resources :projects
  ActiveAdmin.routes(self)
  resources :project_managers, only:[:show, :edit]
end

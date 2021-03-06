Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :project_managers, only:[:show, :edit]
end

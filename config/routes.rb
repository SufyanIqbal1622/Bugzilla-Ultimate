Rails.application.routes.draw do
  resources :project_managers, only:[:show, :edit]
end

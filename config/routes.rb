Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :features
  end

  resource :project do
    resources :features
  end
  root to: "projects#index"
  ActiveAdmin.routes(self)

end

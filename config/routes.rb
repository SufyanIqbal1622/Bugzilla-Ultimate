Rails.application.routes.draw do
  resources :projects do
    resources :bugs do
      resources :comments, module: :bugs
    end
  end
  devise_for :users

  resources :projects do
    resources :features do
      resources :comments, module: :features
    end
  end

  resource :project do
    resources :features
  end
  root to: "projects#index"
  ActiveAdmin.routes(self)

end

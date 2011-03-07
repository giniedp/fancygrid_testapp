FancygridTestapp::Application.routes.draw do
  
  resources :roles
  resources :users

  resources :companies do
    resources :employees
    resources :projects
  end

  root :to => "application#index"
end

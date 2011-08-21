FancygridTestapp::Application.routes.draw do
  
  resources :roles
  resources :users do
    collection do
      put :index 
    end
  end

  resources :companies do
    resources :employees
    resources :projects
  end

  root :to => "application#index"
end

Spree::Core::Engine.routes.draw do
  # Add your extension routes here 
  namespace :api do
      resources :boxes
      resources :boxdetails
  end
end

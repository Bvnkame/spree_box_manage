Spree::Core::Engine.routes.draw do
  # Add your extension routes here 
  namespace :api do
    resources :boxes
    resources :boxdetails
  end
  
  # devise_for :users,
  # :as => '', 
   # :path_names => { 
     # :sign_in => "", 
     # :sign_out => "logout", 
     # :sign_up => "register" 
   # }
end

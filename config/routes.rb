Rails.application.routes.draw do
  
  devise_for :managers
  
  namespace :admin do
    
  end
  
  
  devise_for :members
  
  scope module: :public do
    
  end
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

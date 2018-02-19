Rails.application.routes.draw do
  
  root to: 'companies#index'
  resources :companies do
    resources :founders
    resources :tags
  end


end

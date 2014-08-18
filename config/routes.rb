Rails.application.routes.draw do
  devise_for :users do
    resources :gadgets
  end
  
end

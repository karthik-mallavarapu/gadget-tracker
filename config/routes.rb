Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resources :gadgets
  end

  get 'search' => 'search#index', as: :search
  
end

Rails.application.routes.draw do
  devise_for :users
  root to: "preps#index"
  resources :preps do
    resources :prep, only: [:index,:new, :create]
  end
end

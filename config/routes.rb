Rails.application.routes.draw do
  devise_for :users
  root to: "preps#index"
  resources :preps do
    resources :reviews, only: :create
  end
end

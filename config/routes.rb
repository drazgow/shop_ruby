Rails.application.routes.draw do
  namespace :admin do
    resources :products
  end
  resources :products, only: [:index, :show]
end

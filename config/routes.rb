Rails.application.routes.draw do
  resources :notifications
  get 'notifications/index'
  root "notifications#index"
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

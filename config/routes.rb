Rails.application.routes.draw do
  resources :pods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pods#index'

end

Rails.application.routes.draw do
  get 'home/index'
  devise_for :customers, controllers: { registrations: 'registrations' }
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root to: 'patient#index'
  resources :patient
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

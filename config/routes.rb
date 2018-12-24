Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rosters
  resources :broods
  resources :broodlings
  resources :options
  resources :special_rules

  root "static#home"
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  shallow do
    resources :rosters do
      resources :broods do
        resources :options
      end
    end
  end

  resources :broods do
    resources :special_rules
  end
  
  resources :options do
    resources :special_rules
  end
  
  resources :one_or_none_choices do
    resources :special_rules
  end

  root "rosters#index"
end

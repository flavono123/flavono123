Rails.application.routes.draw do
  resources :movies do
    collection do
      get 'calendar'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :types do

  end
end

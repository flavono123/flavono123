Rails.application.routes.draw do
  resources :movies do
    collection do
      get 'calendar'
      get ':date', constraints: {date: /\d{4}-\d{2}-\d{2}/}, to: 'movies#reserved_date'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :types do

  end
end

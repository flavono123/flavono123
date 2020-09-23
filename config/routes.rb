Rails.application.routes.draw do
  resources :movies do
    collection do
      get 'calendar'
      get ':date', constraints: {date: /\d{4}-\d{2}-\d{2}/}, to: 'movies#reserved_date'
    end
  end

  resources :types do

  end
end

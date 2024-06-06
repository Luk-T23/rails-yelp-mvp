Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :restaurant, only: %i[index show new] do
    resources :review, only: %i[show new]
  end
end

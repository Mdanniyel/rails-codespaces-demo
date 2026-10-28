Rails.application.routes.draw do
  root "home#index"
  get "home/index"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :tasks, only: [:create, :destroy] do
    member do
      patch :toggle
    end
  end
end

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations }
  root to: "athletes#index"

  resources :workouts do
    resources :scores, except: [:show, :index]
  end

  resources :athletes
end

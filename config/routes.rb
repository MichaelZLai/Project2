Rails.application.routes.draw do

  devise_for :users
  root to: "workouts#index"

  resources :workouts do
    resources :scores, except: [:show, :index]
  end

end

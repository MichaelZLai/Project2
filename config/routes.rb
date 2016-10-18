Rails.application.routes.draw do

  devise_for :users
  root to: "devise/sessions#new"

  resources :workouts do
    resources :scores, except: [:show, :index]
  end

end

Rails.application.routes.draw do

  resources :workouts do
    resources :scores, except: [:show, :index]
  end

end

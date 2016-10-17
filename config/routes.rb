Rails.application.routes.draw do

  resources :workouts do
    resources :scores
  end
  
end

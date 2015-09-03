Rails.application.routes.draw do
  devise_for :users

  resources :workouts

  root to: 'workouts#index'
end

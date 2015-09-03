Rails.application.routes.draw do
  root to: 'workouts#index'

  devise_for :users

  resources :workouts, only: [:index, :show, :new, :create]
end

Rails.application.routes.draw do
  root "games#index"
  get "games/ranking", to: "games#ranking"
  resources :answers
  resources :questions
  resources :categories
  resources :games, only: [:index, :new, :create]
  resources :game_answers, only: [:new, :create]
  
  namespace :authentication, path: '', as:'' do
    resources :users
    resources :sessions, only: [:new, :create, :destroy]
  end
end

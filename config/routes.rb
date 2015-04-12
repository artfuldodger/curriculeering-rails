Rails.application.routes.draw do
  resources :curriculums, only: [:index, :show, :update]
  resources :lessons, only: [:show, :update, :create]
  resources :instructors, only: [:index, :show]
  resources :resources, only: [:show, :update, :create]
end

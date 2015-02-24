Rails.application.routes.draw do
  resources :curriculums, only: [:index, :show, :update]
  resources :lessons, only: [:show, :update]
  resources :instructors, only: [:index, :show]
end

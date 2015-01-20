Rails.application.routes.draw do
  resources :curriculums, only: [:index, :show]
  resources :instructors, only: [:index, :show]
end

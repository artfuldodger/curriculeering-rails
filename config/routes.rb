Rails.application.routes.draw do
  resources :curriculums, only: [:index, :show, :update] do
    resources :lessons, only: [:index]
  end
  resources :instructors, only: [:index, :show]
end

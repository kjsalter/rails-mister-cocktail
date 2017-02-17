Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/destroy'

  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
  resources :reviews, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
end

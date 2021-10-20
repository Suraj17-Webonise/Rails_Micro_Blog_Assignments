Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'

  resources :posts do
    resources :comments
  end

  resources :posts do
    member do
      post :publish
      get :unpublish
    end
  end
end

Rails.application.routes.draw do

  devise_for :users
  root to: "notes#index"
  resources :users, only: [:index, :edit, :update, :show] do
    collection do
      post 'purchase'
    end
  end
  resources :notes, only: [:index, :new, :update, :create, :show] do
    resources :likes, only: [:create, :destroy]
    collection do
      post 'purchase'
    end
  end
end

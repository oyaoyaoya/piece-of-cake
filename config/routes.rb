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
  get 'recommend' => "notes#recommend"
  get 'manga' => "notes#manga"
  get 'column' => "notes#column"
  get 'novel' => "notes#novel"
  get 'photo' => "notes#photo"
  get 'music' => "notes#music"

end

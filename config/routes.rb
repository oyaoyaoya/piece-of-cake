Rails.application.routes.draw do

  devise_for :users
  root to: "notes#index"
  resources :users, only: [:index, :edit, :update, :show] 
    resources :notes, only: [:index, :new, :update, :create]
  post 'notes/pay' => 'notes#pay'

end

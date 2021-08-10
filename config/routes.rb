Rails.application.routes.draw do

  devise_for :users
  # root to: 'albums#index'
  root to: 'user#index'

  # devise_scope :user do
  #   root to: 'albums#index'
  # end

  resources :albums do
    resources :pictures
  end

end
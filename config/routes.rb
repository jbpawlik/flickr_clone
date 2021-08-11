Rails.application.routes.draw do

 
  
  devise_for :users
    root to: 'user#index'
  

  # root to: 'albums#index'
  

  # devise_scope :user do
  #   root to: 'user#index'
  # end

  resources :albums do
    resources :pictures
  end

end
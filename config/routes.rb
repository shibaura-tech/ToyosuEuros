Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  devise_scope :user do
    root to: 'devise/sessions#new'
    
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

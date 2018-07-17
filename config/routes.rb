Rails.application.routes.draw do

  root 'home#index'

  get 'topics/index'

  get 'topics/list' => 'topics#list'

  get 'topics/show/:id' => 'topics#show', as: :topics_show
  get 'topics/create' => 'topics#create'
  post 'topics/create' => 'topics#create'
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete

  post 'posts/create' => 'post#create', as: :post_create
  delete 'posts/delete/:id' => 'post#delete', as: :post_delete

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
